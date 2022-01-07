; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/scsipi/libscsitest/extr_scsitest.c_scsitest_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/scsipi/libscsitest/extr_scsitest.c_scsitest_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsipi_channel = type { i32 }
%struct.scsipi_xfer = type { i32, %struct.scsipi_toc_header*, %struct.scsipi_generic* }
%struct.scsipi_toc_header = type { i32, i32, i32, i32, i32 }
%struct.scsipi_generic = type { i32 }
%struct.scsipi_inquiry_data = type { i32, i32, i32, i32, i32 }
%struct.scsipi_read_cd_cap_data = type { i32, i32 }
%struct.scsipi_read_discinfo_data = type { i32, i32, i32, i32, i32 }
%struct.scsipi_read_trackinfo_data = type { i32 }
%struct.scsipi_start_stop = type { i32 }

@ADAPTER_REQ_RUN_XFER = common dso_local global i64 0, align 8
@isofd = common dso_local global i32 0, align 4
@T_CDROM = common dso_local global i32 0, align 4
@SID_REMOVABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RUMPHOBO\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"It's a LIE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0.00\00", align 1
@CDBLOCKSIZE = common dso_local global i32 0, align 4
@mycdsize = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@XS_CTL_SILENT = common dso_local global i32 0, align 4
@rump_scsitest_err = common dso_local global i32* null, align 8
@RUMP_SCSITEST_NOISYSYNC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"unhandled opcode 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsipi_channel*, i64, i8*)* @scsitest_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsitest_request(%struct.scsipi_channel* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.scsipi_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsipi_xfer*, align 8
  %8 = alloca %struct.scsipi_generic*, align 8
  %9 = alloca %struct.scsipi_inquiry_data*, align 8
  %10 = alloca %struct.scsipi_read_cd_cap_data*, align 8
  %11 = alloca %struct.scsipi_read_discinfo_data*, align 8
  %12 = alloca %struct.scsipi_read_trackinfo_data*, align 8
  %13 = alloca %struct.scsipi_toc_header*, align 8
  %14 = alloca %struct.scsipi_start_stop*, align 8
  store %struct.scsipi_channel* %0, %struct.scsipi_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.scsipi_xfer*
  store %struct.scsipi_xfer* %16, %struct.scsipi_xfer** %7, align 8
  %17 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %18 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %17, i32 0, i32 2
  %19 = load %struct.scsipi_generic*, %struct.scsipi_generic** %18, align 8
  store %struct.scsipi_generic* %19, %struct.scsipi_generic** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ADAPTER_REQ_RUN_XFER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %152

24:                                               ; preds = %3
  %25 = load %struct.scsipi_generic*, %struct.scsipi_generic** %8, align 8
  %26 = getelementptr inbounds %struct.scsipi_generic, %struct.scsipi_generic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %144 [
    i32 129, label %28
    i32 137, label %35
    i32 136, label %62
    i32 135, label %78
    i32 133, label %87
    i32 134, label %98
    i32 128, label %106
    i32 130, label %118
    i32 138, label %137
    i32 131, label %142
    i32 132, label %143
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @isofd, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %33 = call i32 @sense_notready(%struct.scsipi_xfer* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %149

35:                                               ; preds = %24
  %36 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %37 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %36, i32 0, i32 1
  %38 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %37, align 8
  %39 = bitcast %struct.scsipi_toc_header* %38 to i8*
  %40 = bitcast i8* %39 to %struct.scsipi_inquiry_data*
  store %struct.scsipi_inquiry_data* %40, %struct.scsipi_inquiry_data** %9, align 8
  %41 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %42 = bitcast %struct.scsipi_inquiry_data* %41 to %struct.scsipi_toc_header*
  %43 = call i32 @memset(%struct.scsipi_toc_header* %42, i32 0, i32 20)
  %44 = load i32, i32* @T_CDROM, align 4
  %45 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %46 = getelementptr inbounds %struct.scsipi_inquiry_data, %struct.scsipi_inquiry_data* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @SID_REMOVABLE, align 4
  %48 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %49 = getelementptr inbounds %struct.scsipi_inquiry_data, %struct.scsipi_inquiry_data* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %51 = getelementptr inbounds %struct.scsipi_inquiry_data, %struct.scsipi_inquiry_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %55 = getelementptr inbounds %struct.scsipi_inquiry_data, %struct.scsipi_inquiry_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcpy(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.scsipi_inquiry_data*, %struct.scsipi_inquiry_data** %9, align 8
  %59 = getelementptr inbounds %struct.scsipi_inquiry_data, %struct.scsipi_inquiry_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %149

62:                                               ; preds = %24
  %63 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %64 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %63, i32 0, i32 1
  %65 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %64, align 8
  %66 = bitcast %struct.scsipi_toc_header* %65 to i8*
  %67 = bitcast i8* %66 to %struct.scsipi_read_cd_cap_data*
  store %struct.scsipi_read_cd_cap_data* %67, %struct.scsipi_read_cd_cap_data** %10, align 8
  %68 = load i32, i32* @CDBLOCKSIZE, align 4
  %69 = load %struct.scsipi_read_cd_cap_data*, %struct.scsipi_read_cd_cap_data** %10, align 8
  %70 = getelementptr inbounds %struct.scsipi_read_cd_cap_data, %struct.scsipi_read_cd_cap_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @_lto4b(i32 %68, i32 %71)
  %73 = load i32, i32* @mycdsize, align 4
  %74 = load %struct.scsipi_read_cd_cap_data*, %struct.scsipi_read_cd_cap_data** %10, align 8
  %75 = getelementptr inbounds %struct.scsipi_read_cd_cap_data, %struct.scsipi_read_cd_cap_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @_lto4b(i32 %73, i32 %76)
  br label %149

78:                                               ; preds = %24
  %79 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %80 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %79, i32 0, i32 1
  %81 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %80, align 8
  %82 = bitcast %struct.scsipi_toc_header* %81 to i8*
  %83 = bitcast i8* %82 to %struct.scsipi_read_discinfo_data*
  store %struct.scsipi_read_discinfo_data* %83, %struct.scsipi_read_discinfo_data** %11, align 8
  %84 = load %struct.scsipi_read_discinfo_data*, %struct.scsipi_read_discinfo_data** %11, align 8
  %85 = bitcast %struct.scsipi_read_discinfo_data* %84 to %struct.scsipi_toc_header*
  %86 = call i32 @memset(%struct.scsipi_toc_header* %85, i32 0, i32 20)
  br label %149

87:                                               ; preds = %24
  %88 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %89 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %88, i32 0, i32 1
  %90 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %89, align 8
  %91 = bitcast %struct.scsipi_toc_header* %90 to i8*
  %92 = bitcast i8* %91 to %struct.scsipi_read_trackinfo_data*
  store %struct.scsipi_read_trackinfo_data* %92, %struct.scsipi_read_trackinfo_data** %12, align 8
  %93 = load i32, i32* @mycdsize, align 4
  %94 = load %struct.scsipi_read_trackinfo_data*, %struct.scsipi_read_trackinfo_data** %12, align 8
  %95 = getelementptr inbounds %struct.scsipi_read_trackinfo_data, %struct.scsipi_read_trackinfo_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @_lto4b(i32 %93, i32 %96)
  br label %149

98:                                               ; preds = %24
  %99 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %100 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %99, i32 0, i32 1
  %101 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %100, align 8
  %102 = bitcast %struct.scsipi_toc_header* %101 to i8*
  %103 = bitcast i8* %102 to %struct.scsipi_toc_header*
  store %struct.scsipi_toc_header* %103, %struct.scsipi_toc_header** %13, align 8
  %104 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %13, align 8
  %105 = call i32 @memset(%struct.scsipi_toc_header* %104, i32 0, i32 20)
  br label %149

106:                                              ; preds = %24
  %107 = load %struct.scsipi_generic*, %struct.scsipi_generic** %8, align 8
  %108 = bitcast %struct.scsipi_generic* %107 to i8*
  %109 = bitcast i8* %108 to %struct.scsipi_start_stop*
  store %struct.scsipi_start_stop* %109, %struct.scsipi_start_stop** %14, align 8
  %110 = load %struct.scsipi_start_stop*, %struct.scsipi_start_stop** %14, align 8
  %111 = getelementptr inbounds %struct.scsipi_start_stop, %struct.scsipi_start_stop* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SSS_LOEJ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 -1, i32* @isofd, align 4
  br label %117

117:                                              ; preds = %116, %106
  br label %149

118:                                              ; preds = %24
  %119 = load i32, i32* @isofd, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %123 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @XS_CTL_SILENT, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load i32*, i32** @rump_scsitest_err, align 8
  %130 = load i64, i64* @RUMP_SCSITEST_NOISYSYNC, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @atomic_inc_uint(i32* %131)
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %135 = call i32 @sense_notready(%struct.scsipi_xfer* %134)
  br label %136

136:                                              ; preds = %133, %118
  br label %149

137:                                              ; preds = %24
  %138 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %139 = getelementptr inbounds %struct.scsipi_xfer, %struct.scsipi_xfer* %138, i32 0, i32 1
  %140 = load %struct.scsipi_toc_header*, %struct.scsipi_toc_header** %139, align 8
  %141 = call i32 @memset(%struct.scsipi_toc_header* %140, i32 0, i32 4)
  br label %149

142:                                              ; preds = %24
  br label %149

143:                                              ; preds = %24
  br label %149

144:                                              ; preds = %24
  %145 = load %struct.scsipi_generic*, %struct.scsipi_generic** %8, align 8
  %146 = getelementptr inbounds %struct.scsipi_generic, %struct.scsipi_generic* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %143, %142, %137, %136, %117, %98, %87, %78, %62, %35, %34
  %150 = load %struct.scsipi_xfer*, %struct.scsipi_xfer** %7, align 8
  %151 = call i32 @scsipi_done(%struct.scsipi_xfer* %150)
  br label %152

152:                                              ; preds = %149, %23
  ret void
}

declare dso_local i32 @sense_notready(%struct.scsipi_xfer*) #1

declare dso_local i32 @memset(%struct.scsipi_toc_header*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @_lto4b(i32, i32) #1

declare dso_local i32 @atomic_inc_uint(i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @scsipi_done(%struct.scsipi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
