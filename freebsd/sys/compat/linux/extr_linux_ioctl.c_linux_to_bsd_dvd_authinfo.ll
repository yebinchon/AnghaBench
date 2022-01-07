; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_dvd_authinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_dvd_authinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.dvd_authinfo = type { i32, i32, i32, i32, i32 }

@DVDIOCREPORTKEY = common dso_local global i32 0, align 4
@DVD_REPORT_AGID = common dso_local global i32 0, align 4
@DVDIOCSENDKEY = common dso_local global i32 0, align 4
@DVD_SEND_CHALLENGE = common dso_local global i32 0, align 4
@DVD_REPORT_KEY1 = common dso_local global i32 0, align 4
@DVD_REPORT_CHALLENGE = common dso_local global i32 0, align 4
@DVD_SEND_KEY2 = common dso_local global i32 0, align 4
@DVD_REPORT_TITLE_KEY = common dso_local global i32 0, align 4
@DVD_REPORT_ASF = common dso_local global i32 0, align 4
@DVD_INVALIDATE_AGID = common dso_local global i32 0, align 4
@DVD_REPORT_RPC = common dso_local global i32 0, align 4
@DVD_SEND_RPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, %struct.dvd_authinfo*)* @linux_to_bsd_dvd_authinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_dvd_authinfo(%struct.TYPE_19__* %0, i32* %1, %struct.dvd_authinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dvd_authinfo*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.dvd_authinfo* %2, %struct.dvd_authinfo** %7, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %147 [
    i32 133, label %11
    i32 137, label %23
    i32 130, label %43
    i32 131, label %55
    i32 136, label %67
    i32 128, label %87
    i32 132, label %105
    i32 134, label %117
    i32 129, label %129
    i32 135, label %135
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @DVD_REPORT_AGID, align 4
  %15 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %16 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %22 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %149

23:                                               ; preds = %3
  %24 = load i32, i32* @DVDIOCSENDKEY, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @DVD_SEND_CHALLENGE, align 4
  %27 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %28 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %34 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %36 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %41, i32 10)
  br label %149

43:                                               ; preds = %3
  %44 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @DVD_REPORT_KEY1, align 4
  %47 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %48 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %54 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %149

55:                                               ; preds = %3
  %56 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @DVD_REPORT_CHALLENGE, align 4
  %59 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %60 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %66 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %149

67:                                               ; preds = %3
  %68 = load i32, i32* @DVDIOCSENDKEY, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @DVD_SEND_KEY2, align 4
  %71 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %72 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %78 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %80 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %81, i32 %85, i32 5)
  br label %149

87:                                               ; preds = %3
  %88 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @DVD_REPORT_TITLE_KEY, align 4
  %91 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %92 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %98 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %104 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %149

105:                                              ; preds = %3
  %106 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @DVD_REPORT_ASF, align 4
  %109 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %110 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %116 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %149

117:                                              ; preds = %3
  %118 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @DVD_INVALIDATE_AGID, align 4
  %121 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %122 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %128 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  br label %149

129:                                              ; preds = %3
  %130 = load i32, i32* @DVDIOCREPORTKEY, align 4
  %131 = load i32*, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @DVD_REPORT_RPC, align 4
  %133 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %134 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %149

135:                                              ; preds = %3
  %136 = load i32, i32* @DVDIOCSENDKEY, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @DVD_SEND_RPC, align 4
  %139 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %140 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %7, align 8
  %146 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %149

147:                                              ; preds = %3
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %4, align 4
  br label %150

149:                                              ; preds = %135, %129, %117, %105, %87, %67, %55, %43, %23, %11
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %147
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
