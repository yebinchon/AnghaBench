; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.idr_layer = type { i32, i8** }

@IDR_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @idr_replace(%struct.idr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr_layer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.idr*, %struct.idr** %4, align 8
  %11 = getelementptr inbounds %struct.idr, %struct.idr* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.idr*, %struct.idr** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.idr_layer* @idr_find_layer_locked(%struct.idr* %13, i32 %14)
  store %struct.idr_layer* %15, %struct.idr_layer** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IDR_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %20 = icmp eq %struct.idr_layer* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %23 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21, %3
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %8, align 8
  br label %48

33:                                               ; preds = %21
  %34 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %35 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %43 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  br label %48

48:                                               ; preds = %33, %29
  %49 = load %struct.idr*, %struct.idr** %4, align 8
  %50 = getelementptr inbounds %struct.idr, %struct.idr* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i8*, i8** %8, align 8
  ret i8* %52
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.idr_layer* @idr_find_layer_locked(%struct.idr*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
