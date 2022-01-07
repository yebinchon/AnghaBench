; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32, i32** }
%struct.TYPE_2__ = type { i64 (i32*, i32*)*, i32* (%struct.wpa_priv_interface*, i32)*, i32* (%struct.wpa_priv_interface*, i32, i32*)*, i32* (i32)*, i32 (i32*)*, i32 (i32*)* }
%struct.sockaddr_un = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cleaning up forgotten driver instance\00", align 1
@WPA_PRIV_MAX_L2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cleaning up forgotten l2_packet instance\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to initialize driver global context\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to initialize driver wrapper\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Driver wrapper '%s' initialized for interface '%s'\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Driver interface rejected param\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %struct.sockaddr_un*, i32)* @wpa_priv_cmd_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_register(%struct.wpa_priv_interface* %0, %struct.sockaddr_un* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = icmp ne i32 (i32*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 %26(i32* %29)
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 %43(i32* %46)
  %48 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %48, i32 0, i32 7
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %38, %31
  %51 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %3
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %59, i32 0, i32 9
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %58
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %70, i32 0, i32 9
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @l2_packet_deinit(i32* %76)
  %78 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %78, i32 0, i32 9
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %67, %58
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %54

88:                                               ; preds = %54
  %89 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %90 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32* (%struct.wpa_priv_interface*, i32, i32*)*, i32* (%struct.wpa_priv_interface*, i32, i32*)** %92, align 8
  %94 = icmp ne i32* (%struct.wpa_priv_interface*, i32, i32*)* %93, null
  br i1 %94, label %95, label %141

95:                                               ; preds = %88
  %96 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %97 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32* (i32)*, i32* (i32)** %99, align 8
  %101 = icmp ne i32* (i32)* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %104 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32* (i32)*, i32* (i32)** %106, align 8
  %108 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call i32* %107(i32 %110)
  %112 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %113 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  %114 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %115 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* @MSG_INFO, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %210

121:                                              ; preds = %102
  br label %125

122:                                              ; preds = %95
  %123 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %124 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %123, i32 0, i32 7
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %122, %121
  %126 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32* (%struct.wpa_priv_interface*, i32, i32*)*, i32* (%struct.wpa_priv_interface*, i32, i32*)** %129, align 8
  %131 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %132 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %133 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %136 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %135, i32 0, i32 7
  %137 = load i32*, i32** %136, align 8
  %138 = call i32* %130(%struct.wpa_priv_interface* %131, i32 %134, i32* %137)
  %139 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %140 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %139, i32 0, i32 1
  store i32* %138, i32** %140, align 8
  br label %163

141:                                              ; preds = %88
  %142 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %143 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32* (%struct.wpa_priv_interface*, i32)*, i32* (%struct.wpa_priv_interface*, i32)** %145, align 8
  %147 = icmp ne i32* (%struct.wpa_priv_interface*, i32)* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %141
  %149 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %150 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32* (%struct.wpa_priv_interface*, i32)*, i32* (%struct.wpa_priv_interface*, i32)** %152, align 8
  %154 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %155 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %156 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i32* %153(%struct.wpa_priv_interface* %154, i32 %157)
  %159 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %160 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %159, i32 0, i32 1
  store i32* %158, i32** %160, align 8
  br label %162

161:                                              ; preds = %141
  br label %210

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %125
  %164 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %165 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %210

171:                                              ; preds = %163
  %172 = load i32, i32* @MSG_DEBUG, align 4
  %173 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %174 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %177 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %175, i32 %178)
  %180 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %181 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %180, i32 0, i32 4
  %182 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @os_memcpy(i32* %181, %struct.sockaddr_un* %182, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %187 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %189 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %191 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %190, i32 0, i32 2
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %193, align 8
  %195 = icmp ne i64 (i32*, i32*)* %194, null
  br i1 %195, label %196, label %210

196:                                              ; preds = %171
  %197 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %198 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %197, i32 0, i32 2
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %200, align 8
  %202 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %203 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = call i64 %201(i32* %204, i32* null)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %196
  %208 = load i32, i32* @MSG_ERROR, align 4
  %209 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %210

210:                                              ; preds = %118, %161, %168, %207, %196, %171
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @l2_packet_deinit(i32*) #1

declare dso_local i32 @os_memcpy(i32*, %struct.sockaddr_un*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
