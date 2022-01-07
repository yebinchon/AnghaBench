; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_seek_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_seek_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ses_iterator = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SES_ELEM_INDEX_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ses_iterator*, i32, i64)* @ses_iter_seek_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ses_iter_seek_to(%struct.ses_iterator* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ses_iterator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ses_iterator* %0, %struct.ses_iterator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @SES_ELEM_INDEX_GLOBAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %15 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %14, i32 0, i32 0
  store i32* %15, i32** %9, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %17, i32 0, i32 1
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %26 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %31 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %4, align 8
  br label %58

35:                                               ; preds = %19
  %36 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %37 = call i32 @ses_iter_reset(%struct.ses_iterator* %36)
  br label %38

38:                                               ; preds = %49, %35
  %39 = load %struct.ses_iterator*, %struct.ses_iterator** %5, align 8
  %40 = call i32* @ses_iter_next(%struct.ses_iterator* %39)
  store i32* %40, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %38

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32* null, i32** %4, align 8
  br label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %55, %24
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @ses_iter_reset(%struct.ses_iterator*) #1

declare dso_local i32* @ses_iter_next(%struct.ses_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
