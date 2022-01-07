; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filegen_entry = type { i8*, %struct.filegen_entry*, i32* }

@filegen_registry = common dso_local global %struct.filegen_entry* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"filegen_get(%s) = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"filegen_get(%s) = NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @filegen_get(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.filegen_entry*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.filegen_entry*, %struct.filegen_entry** @filegen_registry, align 8
  store %struct.filegen_entry* %5, %struct.filegen_entry** %4, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %8 = icmp ne %struct.filegen_entry* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %11 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %18 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %16, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15, %9
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %25 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @DPRINTF(i32 4, i8* %27)
  %29 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %30 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %2, align 8
  br label %39

32:                                               ; preds = %15
  %33 = load %struct.filegen_entry*, %struct.filegen_entry** %4, align 8
  %34 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %33, i32 0, i32 1
  %35 = load %struct.filegen_entry*, %struct.filegen_entry** %34, align 8
  store %struct.filegen_entry* %35, %struct.filegen_entry** %4, align 8
  br label %6

36:                                               ; preds = %6
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @DPRINTF(i32 4, i8* %37)
  store i32* null, i32** %2, align 8
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
