; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_consume_cfdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_consume_cfdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cab = type { %struct.TYPE_4__*, %struct.cfdata*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfdata = type { i64, i64, i64, i64, i32, i64 }

@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid CFDATA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64)* @cab_consume_cfdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cab_consume_cfdata(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cab*, align 8
  %7 = alloca %struct.cfdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cab*
  store %struct.cab* %17, %struct.cab** %6, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @cab_minimum_consume_cfdata(%struct.archive_read* %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %24, i64* %3, align 8
  br label %199

25:                                               ; preds = %2
  %26 = load %struct.cab*, %struct.cab** %6, align 8
  %27 = getelementptr inbounds %struct.cab, %struct.cab* %26, i32 0, i32 1
  %28 = load %struct.cfdata*, %struct.cfdata** %27, align 8
  store %struct.cfdata* %28, %struct.cfdata** %7, align 8
  br label %29

29:                                               ; preds = %196, %166, %123, %25
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %197

32:                                               ; preds = %29
  %33 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %34 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %39 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %38, i32 0, i32 0
  %40 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %41 = call i32 @archive_set_error(i32* %39, i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %42, i64* %3, align 8
  br label %199

43:                                               ; preds = %32
  %44 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %45 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %57 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %137

60:                                               ; preds = %52
  %61 = load %struct.cab*, %struct.cab** %6, align 8
  %62 = getelementptr inbounds %struct.cab, %struct.cab* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.cab*, %struct.cab** %6, align 8
  %69 = getelementptr inbounds %struct.cab, %struct.cab* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 130
  br i1 %73, label %74, label %137

74:                                               ; preds = %67, %60
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %77 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %74
  %81 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %82 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %83 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @__archive_read_consume(%struct.archive_read* %81, i64 %84)
  %86 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %87 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cab*, %struct.cab** %6, align 8
  %90 = getelementptr inbounds %struct.cab, %struct.cab* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %96 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %95, i32 0, i32 5
  store i64 0, i64* %96, align 8
  %97 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %98 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %100 = call i32 @cab_next_cfdata(%struct.archive_read* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %80
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %3, align 8
  br label %199

106:                                              ; preds = %80
  %107 = load %struct.cab*, %struct.cab** %6, align 8
  %108 = getelementptr inbounds %struct.cab, %struct.cab* %107, i32 0, i32 1
  %109 = load %struct.cfdata*, %struct.cfdata** %108, align 8
  store %struct.cfdata* %109, %struct.cfdata** %7, align 8
  %110 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %111 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.cab*, %struct.cab** %6, align 8
  %116 = getelementptr inbounds %struct.cab, %struct.cab* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %121 [
    i32 129, label %120
    i32 128, label %120
    i32 130, label %120
  ]

120:                                              ; preds = %114, %114, %114
  store i64 0, i64* %9, align 8
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %106
  br label %29

124:                                              ; preds = %74
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %127 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %134 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %197

137:                                              ; preds = %67, %52
  %138 = load i64, i64* %8, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  %141 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %142 = call i32 @cab_next_cfdata(%struct.archive_read* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %3, align 8
  br label %199

148:                                              ; preds = %140
  %149 = load %struct.cab*, %struct.cab** %6, align 8
  %150 = getelementptr inbounds %struct.cab, %struct.cab* %149, i32 0, i32 1
  %151 = load %struct.cfdata*, %struct.cfdata** %150, align 8
  store %struct.cfdata* %151, %struct.cfdata** %7, align 8
  %152 = load %struct.cfdata*, %struct.cfdata** %7, align 8
  %153 = getelementptr inbounds %struct.cfdata, %struct.cfdata* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %148
  %157 = load %struct.cab*, %struct.cab** %6, align 8
  %158 = getelementptr inbounds %struct.cab, %struct.cab* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %164 [
    i32 129, label %162
    i32 128, label %162
    i32 130, label %162
  ]

162:                                              ; preds = %156, %156, %156
  %163 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %163, i64* %3, align 8
  br label %199

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %148
  br label %29

167:                                              ; preds = %137
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %192, %168
  %170 = load i64, i64* %8, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %174 = call i32 @cab_read_ahead_cfdata(%struct.archive_read* %173, i64* %11)
  %175 = load i64, i64* %11, align 8
  %176 = icmp sle i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %178, i64* %3, align 8
  br label %199

179:                                              ; preds = %172
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* %8, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* %8, align 8
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %187 = load i64, i64* %11, align 8
  %188 = call i64 @cab_minimum_consume_cfdata(%struct.archive_read* %186, i64 %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %191, i64* %3, align 8
  br label %199

192:                                              ; preds = %185
  %193 = load i64, i64* %11, align 8
  %194 = load i64, i64* %8, align 8
  %195 = sub nsw i64 %194, %193
  store i64 %195, i64* %8, align 8
  br label %169

196:                                              ; preds = %169
  br label %29

197:                                              ; preds = %124, %29
  %198 = load i64, i64* %5, align 8
  store i64 %198, i64* %3, align 8
  br label %199

199:                                              ; preds = %197, %190, %177, %162, %145, %103, %37, %23
  %200 = load i64, i64* %3, align 8
  ret i64 %200
}

declare dso_local i64 @cab_minimum_consume_cfdata(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @cab_next_cfdata(%struct.archive_read*) #1

declare dso_local i32 @cab_read_ahead_cfdata(%struct.archive_read*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
