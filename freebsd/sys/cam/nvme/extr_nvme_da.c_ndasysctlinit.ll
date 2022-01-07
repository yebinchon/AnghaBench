; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndasysctlinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndasysctlinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, i64 }
%struct.nda_softc = type { i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CAM NDA unit %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NDA_FLAG_SCTX_INIT = common dso_local global i32 0, align 4
@_kern_cam_nda = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"device_index\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ndasysctlinit: unable to allocate sysctl tree\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unmapped_io\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Unmapped I/O leaf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"deletes\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Number of BIO_DELETE requests\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"trim_count\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Total number of unmap/dsm commands sent\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"trim_ranges\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Total number of ranges in unmap/dsm commands\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"trim_lbas\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Total lbas in the unmap/dsm commands sent\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rotating\00", align 1
@nda_rotating_media = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Rotating media\00", align 1
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@cam_periph_invalidate_sysctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ndasysctlinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndasysctlinit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.nda_softc*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %5, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %19 = call i32 @cam_periph_release(%struct.cam_periph* %18)
  br label %138

20:                                               ; preds = %2
  %21 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %22 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.nda_softc*
  store %struct.nda_softc* %24, %struct.nda_softc** %6, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %26 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %27 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snprintf(i8* %25, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %31 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %32 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintf(i8* %30, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %36 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %35, i32 0, i32 1
  %37 = call i32 @sysctl_ctx_init(i32* %36)
  %38 = load i32, i32* @NDA_FLAG_SCTX_INIT, align 4
  %39 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %40 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %44 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %43, i32 0, i32 1
  %45 = load i32, i32* @_kern_cam_nda, align 4
  %46 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %45)
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %51 = call i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32* %44, i32 %46, i32 %47, i8* %48, i32 %49, i32 0, i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %53 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %55 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %20
  %59 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %61 = call i32 @cam_periph_release(%struct.cam_periph* %60)
  br label %138

62:                                               ; preds = %20
  %63 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %64 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %63, i32 0, i32 1
  %65 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %66 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @SYSCTL_CHILDREN(i32* %67)
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %72 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %71, i32 0, i32 12
  %73 = call i32 @SYSCTL_ADD_INT(i32* %64, i32 %68, i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32* %72, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %75 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %74, i32 0, i32 1
  %76 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %77 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @SYSCTL_CHILDREN(i32* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %83 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %82, i32 0, i32 11
  %84 = call i32 @SYSCTL_ADD_QUAD(i32* %75, i32 %79, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %86 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %85, i32 0, i32 1
  %87 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %88 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @SYSCTL_CHILDREN(i32* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %94 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %93, i32 0, i32 10
  %95 = call i32 @SYSCTL_ADD_UQUAD(i32* %86, i32 %90, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %96 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %97 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %96, i32 0, i32 1
  %98 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %99 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @SYSCTL_CHILDREN(i32* %100)
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %105 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %104, i32 0, i32 9
  %106 = call i32 @SYSCTL_ADD_UQUAD(i32* %97, i32 %101, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %103, i32* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %107 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %108 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %107, i32 0, i32 1
  %109 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %110 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @SYSCTL_CHILDREN(i32* %111)
  %113 = load i32, i32* @OID_AUTO, align 4
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %116 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %115, i32 0, i32 8
  %117 = call i32 @SYSCTL_ADD_UQUAD(i32* %108, i32 %112, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %114, i32* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %118 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %119 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %118, i32 0, i32 1
  %120 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %121 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @SYSCTL_CHILDREN(i32* %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = call i32 @SYSCTL_ADD_INT(i32* %119, i32 %123, i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %125, i32* @nda_rotating_media, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %127 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %128 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %131 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %130, i32 0, i32 1
  %132 = load %struct.nda_softc*, %struct.nda_softc** %6, align 8
  %133 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @cam_iosched_sysctl_init(i32 %129, i32* %131, i32* %134)
  %136 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %137 = call i32 @cam_periph_release(%struct.cam_periph* %136)
  br label %138

138:                                              ; preds = %62, %58, %17
  ret void
}

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32*, i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @cam_iosched_sysctl_init(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
