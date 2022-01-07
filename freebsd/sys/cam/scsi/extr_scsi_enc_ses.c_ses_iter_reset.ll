; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_iter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ses_iterator = type { i8*, i8*, i8*, i8*, i64 }

@ITERATOR_INDEX_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ses_iterator*)* @ses_iter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_iter_reset(%struct.ses_iterator* %0) #0 {
  %2 = alloca %struct.ses_iterator*, align 8
  store %struct.ses_iterator* %0, %struct.ses_iterator** %2, align 8
  %3 = load %struct.ses_iterator*, %struct.ses_iterator** %2, align 8
  %4 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %3, i32 0, i32 4
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** @ITERATOR_INDEX_INVALID, align 8
  %6 = load %struct.ses_iterator*, %struct.ses_iterator** %2, align 8
  %7 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @ITERATOR_INDEX_INVALID, align 8
  %9 = load %struct.ses_iterator*, %struct.ses_iterator** %2, align 8
  %10 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @ITERATOR_INDEX_INVALID, align 8
  %12 = load %struct.ses_iterator*, %struct.ses_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @ITERATOR_INDEX_INVALID, align 8
  %15 = load %struct.ses_iterator*, %struct.ses_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
