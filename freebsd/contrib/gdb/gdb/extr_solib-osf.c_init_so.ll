; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_init_so.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_init_so.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@SO_NAME_MAX_PATH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, i8*, i32, i32)* @init_so to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_so(%struct.so_list* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.so_list* %0, %struct.so_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.so_list*, %struct.so_list** %5, align 8
  %12 = call i32 @memset(%struct.so_list* %11, i32 0, i32 24)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @SO_NAME_MAX_PATH_SIZE, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.so_list*, %struct.so_list** %5, align 8
  %23 = getelementptr inbounds %struct.so_list, %struct.so_list* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @memcpy(i8* %24, i8* %25, i32 %26)
  %28 = load %struct.so_list*, %struct.so_list** %5, align 8
  %29 = getelementptr inbounds %struct.so_list, %struct.so_list* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load %struct.so_list*, %struct.so_list** %5, align 8
  %35 = getelementptr inbounds %struct.so_list, %struct.so_list* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.so_list*, %struct.so_list** %5, align 8
  %38 = getelementptr inbounds %struct.so_list, %struct.so_list* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @memcpy(i8* %36, i8* %39, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 16
  %46 = add i64 0, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_4__* @xmalloc(i32 %47)
  %49 = load %struct.so_list*, %struct.so_list** %5, align 8
  %50 = getelementptr inbounds %struct.so_list, %struct.so_list* %49, i32 0, i32 2
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.so_list*, %struct.so_list** %5, align 8
  %53 = getelementptr inbounds %struct.so_list, %struct.so_list* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.so_list*, %struct.so_list** %5, align 8
  %58 = getelementptr inbounds %struct.so_list, %struct.so_list* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %21
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.so_list*, %struct.so_list** %5, align 8
  %67 = getelementptr inbounds %struct.so_list, %struct.so_list* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %61

78:                                               ; preds = %61
  ret void
}

declare dso_local i32 @memset(%struct.so_list*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
