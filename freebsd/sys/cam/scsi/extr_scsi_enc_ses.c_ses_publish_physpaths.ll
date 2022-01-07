; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_publish_physpaths.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_publish_physpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }
%struct.ses_iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.enc_fsm_state*, %union.ccb*, i32**, i32, i32)* @ses_publish_physpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_publish_physpaths(%struct.TYPE_6__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.enc_fsm_state*, align 8
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ses_iterator, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %8, align 8
  store %union.ccb* %2, %union.ccb** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* %17, i32** %14, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = call i32 @ses_iter_init(%struct.TYPE_6__* %18, i32* %19, %struct.ses_iterator* %13)
  br label %21

21:                                               ; preds = %33, %6
  %22 = call i32* @ses_iter_next(%struct.ses_iterator* %13)
  store i32* %22, i32** %15, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i64 @ses_set_physpath(%struct.TYPE_6__* %25, i32* %26, %struct.ses_iterator* %13)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 @ses_print_addl_data(%struct.TYPE_6__* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %24
  br label %21

34:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @ses_iter_init(%struct.TYPE_6__*, i32*, %struct.ses_iterator*) #1

declare dso_local i32* @ses_iter_next(%struct.ses_iterator*) #1

declare dso_local i64 @ses_set_physpath(%struct.TYPE_6__*, i32*, %struct.ses_iterator*) #1

declare dso_local i32 @ses_print_addl_data(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
