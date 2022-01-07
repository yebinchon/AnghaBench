; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_clear_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_clear_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.direct = type { i32, i64, i64 }

@sblock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIRBLKSIZ = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @dir_clear_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_clear_block(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.direct*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = bitcast i8* %13 to %struct.direct*
  store %struct.direct* %14, %struct.direct** %5, align 8
  %15 = load %struct.direct*, %struct.direct** %5, align 8
  %16 = getelementptr inbounds %struct.direct, %struct.direct* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* @DIRBLKSIZ, align 8
  %18 = load %struct.direct*, %struct.direct** %5, align 8
  %19 = getelementptr inbounds %struct.direct, %struct.direct* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @DT_UNKNOWN, align 4
  %21 = load %struct.direct*, %struct.direct** %5, align 8
  %22 = getelementptr inbounds %struct.direct, %struct.direct* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i64, i64* @DIRBLKSIZ, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %4, align 8
  br label %6

27:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
