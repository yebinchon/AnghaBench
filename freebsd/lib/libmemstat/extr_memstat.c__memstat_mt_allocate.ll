; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mt_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat.c__memstat_mt_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type = type { i32, i32, i8*, i8* }
%struct.memory_type_list = type { i32 }

@MEMTYPE_MAXNAME = common dso_local global i32 0, align 4
@mt_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.memory_type*, align 8
  %6 = alloca %struct.memory_type_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.memory_type*, align 8
  store %struct.memory_type_list* %0, %struct.memory_type_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i8* @malloc(i32 24)
  %12 = bitcast i8* %11 to %struct.memory_type*
  store %struct.memory_type* %12, %struct.memory_type** %10, align 8
  %13 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %14 = icmp eq %struct.memory_type* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.memory_type* null, %struct.memory_type** %5, align 8
  br label %48

16:                                               ; preds = %4
  %17 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %18 = call i32 @bzero(%struct.memory_type* %17, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %21 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @malloc(i32 %25)
  %27 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %28 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @malloc(i32 %32)
  %34 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %35 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %37 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @MEMTYPE_MAXNAME, align 4
  %41 = call i32 @strlcpy(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.memory_type_list*, %struct.memory_type_list** %6, align 8
  %43 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %42, i32 0, i32 0
  %44 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  %45 = load i32, i32* @mt_list, align 4
  %46 = call i32 @LIST_INSERT_HEAD(i32* %43, %struct.memory_type* %44, i32 %45)
  %47 = load %struct.memory_type*, %struct.memory_type** %10, align 8
  store %struct.memory_type* %47, %struct.memory_type** %5, align 8
  br label %48

48:                                               ; preds = %16, %15
  %49 = load %struct.memory_type*, %struct.memory_type** %5, align 8
  ret %struct.memory_type* %49
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.memory_type*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.memory_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
