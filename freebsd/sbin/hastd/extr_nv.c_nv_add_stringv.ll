; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_add_stringv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_add_stringv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i64 }

@ENOMEM = common dso_local global i64 0, align 8
@NV_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv_add_stringv(%struct.nv* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @vasprintf(i8** %9, i8* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.nv*, %struct.nv** %5, align 8
  %18 = getelementptr inbounds %struct.nv, %struct.nv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = load %struct.nv*, %struct.nv** %5, align 8
  %24 = getelementptr inbounds %struct.nv, %struct.nv* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  br label %37

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nv*, %struct.nv** %5, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NV_TYPE_STRING, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @nv_add(%struct.nv* %29, i8* %30, i32 %31, i32 %32, i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @nv_add(%struct.nv*, i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
