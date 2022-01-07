; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_gflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_gflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.scfg* }
%struct.scfg = type { i32, i32, i8* }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SAFT_FLG1_GLOBFAIL = common dso_local global i32 0, align 4
@SES_ENCSTAT_CRITICAL = common dso_local global i32 0, align 4
@SAFT_FLG1_GLOBWARN = common dso_local global i32 0, align 4
@SES_ENCSTAT_NONCRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.enc_fsm_state*, %union.ccb*, i8***, i32, i32)* @safte_process_gflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_process_gflags(%struct.TYPE_3__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i8*** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.enc_fsm_state*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scfg*, align 8
  %15 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store i8*** %3, i8**** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8***, i8**** %11, align 8
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %15, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.scfg*, %struct.scfg** %19, align 8
  store %struct.scfg* %20, %struct.scfg** %14, align 8
  %21 = load %struct.scfg*, %struct.scfg** %14, align 8
  %22 = icmp eq %struct.scfg* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %7, align 4
  br label %73

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %7, align 4
  br label %73

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @SAFT_BAIL(i32 3, i32 %31)
  %33 = load i8**, i8*** %15, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.scfg*, %struct.scfg** %14, align 8
  %38 = getelementptr inbounds %struct.scfg, %struct.scfg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8**, i8*** %15, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.scfg*, %struct.scfg** %14, align 8
  %43 = getelementptr inbounds %struct.scfg, %struct.scfg* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.scfg*, %struct.scfg** %14, align 8
  %45 = getelementptr inbounds %struct.scfg, %struct.scfg* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.scfg*, %struct.scfg** %14, align 8
  %47 = getelementptr inbounds %struct.scfg, %struct.scfg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SAFT_FLG1_GLOBFAIL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %30
  %53 = load i32, i32* @SES_ENCSTAT_CRITICAL, align 4
  %54 = load %struct.scfg*, %struct.scfg** %14, align 8
  %55 = getelementptr inbounds %struct.scfg, %struct.scfg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %72

58:                                               ; preds = %30
  %59 = load %struct.scfg*, %struct.scfg** %14, align 8
  %60 = getelementptr inbounds %struct.scfg, %struct.scfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SAFT_FLG1_GLOBWARN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @SES_ENCSTAT_NONCRITICAL, align 4
  %67 = load %struct.scfg*, %struct.scfg** %14, align 8
  %68 = getelementptr inbounds %struct.scfg, %struct.scfg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %52
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %28, %23
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @SAFT_BAIL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
