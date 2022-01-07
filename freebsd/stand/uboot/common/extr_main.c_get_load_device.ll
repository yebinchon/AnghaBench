; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_get_load_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_get_load_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DEV_TYP_NONE = common dso_local global i32 0, align 4
@D_SLICEWILD = common dso_local global i32 0, align 4
@D_PARTWILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"loaderdev\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"U-Boot env: loaderdev not set, will probe all devices.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"U-Boot env: loaderdev='%s'\0A\00", align 1
@DEV_TYP_STOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @get_load_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_load_device(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.disk_devdesc, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @DEV_TYP_NONE, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* @D_SLICEWILD, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @D_PARTWILD, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i8* @ub_env_get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %188

26:                                               ; preds = %4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @get_device_type(i8* %29, i32* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DEV_TYP_STOR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %26
  %38 = load i8*, i8** %11, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @strcspn(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @strcspn(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i64, i64* %13, align 8
  %48 = sub i64 %47, 1
  %49 = icmp uge i64 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @disk_parsedev(%struct.disk_devdesc* %9, i8* %51, i32* null)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %9, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %188

65:                                               ; preds = %50, %44, %37
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEV_TYP_NONE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75
  br label %188

86:                                               ; preds = %80
  %87 = load i8*, i8** %11, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @isdigit(i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @DEV_TYP_NONE, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %188

94:                                               ; preds = %86
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @strtol(i8* %95, i8** %12, i32 10)
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %188

104:                                              ; preds = %94
  %105 = load i8*, i8** %11, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 58
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @DEV_TYP_NONE, align 4
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 -1, i32* %112, align 4
  br label %188

113:                                              ; preds = %104
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 0, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %188

121:                                              ; preds = %113
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DEV_TYP_STOR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @DEV_TYP_NONE, align 4
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  store i32 -1, i32* %130, align 4
  br label %188

131:                                              ; preds = %121
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @strtoul(i8* %132, i8** %12, i32 10)
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @DEV_TYP_NONE, align 4
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %6, align 8
  store i32 -1, i32* %141, align 4
  %142 = load i32, i32* @D_SLICEWILD, align 4
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %188

144:                                              ; preds = %131
  %145 = load i8*, i8** %12, align 8
  store i8* %145, i8** %11, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %188

151:                                              ; preds = %144
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 46
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @DEV_TYP_NONE, align 4
  %158 = load i32*, i32** %5, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  store i32 -1, i32* %159, align 4
  %160 = load i32, i32* @D_SLICEWILD, align 4
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  br label %188

162:                                              ; preds = %151
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %188

170:                                              ; preds = %162
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @strtol(i8* %171, i8** %12, i32 10)
  %173 = load i32*, i32** %8, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i8*, i8** %12, align 8
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %188

180:                                              ; preds = %170
  %181 = load i32, i32* @DEV_TYP_NONE, align 4
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i32*, i32** %6, align 8
  store i32 -1, i32* %183, align 4
  %184 = load i32, i32* @D_SLICEWILD, align 4
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* @D_PARTWILD, align 4
  %187 = load i32*, i32** %8, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %180, %179, %169, %156, %150, %138, %127, %120, %109, %103, %91, %85, %54, %24
  ret void
}

declare dso_local i8* @ub_env_get(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_device_type(i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @disk_parsedev(%struct.disk_devdesc*, i8*, i32*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
