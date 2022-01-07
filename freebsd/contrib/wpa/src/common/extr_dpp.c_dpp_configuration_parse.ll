; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configuration_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { %struct.dpp_configuration*, %struct.dpp_configuration* }
%struct.dpp_configuration = type { i64, i8*, i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c" conf=sta-\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" conf=ap-\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" ssid=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" pass=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" psk=\00", align 1
@PMK_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c" group_id=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" expiry=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i8*)* @dpp_configuration_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_configuration_parse(%struct.dpp_authentication* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dpp_configuration*, align 8
  %9 = alloca %struct.dpp_configuration*, align 8
  %10 = alloca %struct.dpp_configuration*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dpp_configuration* null, %struct.dpp_configuration** %8, align 8
  store %struct.dpp_configuration* null, %struct.dpp_configuration** %9, align 8
  store %struct.dpp_configuration* null, %struct.dpp_configuration** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @os_strstr(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 10
  %21 = call %struct.dpp_configuration* @dpp_configuration_alloc(i8* %20)
  store %struct.dpp_configuration* %21, %struct.dpp_configuration** %8, align 8
  %22 = load %struct.dpp_configuration*, %struct.dpp_configuration** %8, align 8
  %23 = icmp ne %struct.dpp_configuration* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %236

25:                                               ; preds = %18
  %26 = load %struct.dpp_configuration*, %struct.dpp_configuration** %8, align 8
  store %struct.dpp_configuration* %26, %struct.dpp_configuration** %10, align 8
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @os_strstr(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 9
  %35 = call %struct.dpp_configuration* @dpp_configuration_alloc(i8* %34)
  store %struct.dpp_configuration* %35, %struct.dpp_configuration** %9, align 8
  %36 = load %struct.dpp_configuration*, %struct.dpp_configuration** %9, align 8
  %37 = icmp ne %struct.dpp_configuration* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %236

39:                                               ; preds = %32
  %40 = load %struct.dpp_configuration*, %struct.dpp_configuration** %9, align 8
  store %struct.dpp_configuration* %40, %struct.dpp_configuration** %10, align 8
  br label %41

41:                                               ; preds = %39, %27
  %42 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %43 = icmp ne %struct.dpp_configuration* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %241

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @os_strstr(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %90

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @os_strchr(i8* %53, i8 signext 32)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  br label %66

63:                                               ; preds = %50
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @os_strlen(i8* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi i64 [ %62, %57 ], [ %65, %63 ]
  %68 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %69 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %71 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = udiv i64 %72, 2
  store i64 %73, i64* %71, align 8
  %74 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %75 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %76, 8
  br i1 %77, label %88, label %78

78:                                               ; preds = %66
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %81 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %84 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @hexstr2bin(i8* %79, i8* %82, i64 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78, %66
  br label %236

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %45
  br label %236

91:                                               ; preds = %89
  %92 = load i8*, i8** %5, align 8
  %93 = call i8* @os_strstr(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %143

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i8* @os_strchr(i8* %99, i8 signext 32)
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  br label %112

109:                                              ; preds = %96
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @os_strlen(i8* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi i64 [ %108, %103 ], [ %111, %109 ]
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = udiv i64 %114, 2
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ugt i64 %116, 63
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* %11, align 8
  %120 = icmp ult i64 %119, 8
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %112
  br label %236

122:                                              ; preds = %118
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, 1
  %125 = call i64 @os_zalloc(i64 %124)
  %126 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %127 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %126, i32 0, i32 6
  store i64 %125, i64* %127, align 8
  %128 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %129 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %135 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load i64, i64* %11, align 8
  %139 = call i64 @hexstr2bin(i8* %133, i8* %137, i64 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132, %122
  br label %236

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %91
  %144 = load i8*, i8** %5, align 8
  %145 = call i8* @os_strstr(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %145, i8** %6, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  store i8* %150, i8** %6, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %153 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i64, i64* @PMK_LEN, align 8
  %156 = call i64 @hexstr2bin(i8* %151, i8* %154, i64 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %236

159:                                              ; preds = %148
  %160 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %161 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %160, i32 0, i32 3
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %143
  %163 = load i8*, i8** %5, align 8
  %164 = call i8* @os_strstr(i8* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %164, i8** %6, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %207

167:                                              ; preds = %162
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 10
  store i8* %169, i8** %6, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = call i8* @os_strchr(i8* %170, i8 signext 32)
  store i8* %171, i8** %7, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  br label %183

180:                                              ; preds = %167
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @os_strlen(i8* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = phi i64 [ %179, %174 ], [ %182, %180 ]
  store i64 %184, i64* %12, align 8
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, 1
  %187 = call i8* @os_malloc(i64 %186)
  %188 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %189 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %191 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %183
  br label %236

195:                                              ; preds = %183
  %196 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %197 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %196, i32 0, i32 4
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = load i64, i64* %12, align 8
  %201 = call i32 @os_memcpy(i8* %198, i8* %199, i64 %200)
  %202 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %203 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %202, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* %12, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 0, i8* %206, align 1
  br label %207

207:                                              ; preds = %195, %162
  %208 = load i8*, i8** %5, align 8
  %209 = call i8* @os_strstr(i8* %208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %209, i8** %6, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 8
  store i8* %214, i8** %6, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i64 @strtol(i8* %215, i32* null, i32 0)
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* %13, align 8
  %218 = icmp sle i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  br label %236

220:                                              ; preds = %212
  %221 = load i64, i64* %13, align 8
  %222 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %223 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %222, i32 0, i32 5
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %220, %207
  %225 = load %struct.dpp_configuration*, %struct.dpp_configuration** %10, align 8
  %226 = call i32 @dpp_configuration_valid(%struct.dpp_configuration* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  br label %236

229:                                              ; preds = %224
  %230 = load %struct.dpp_configuration*, %struct.dpp_configuration** %8, align 8
  %231 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %232 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %231, i32 0, i32 1
  store %struct.dpp_configuration* %230, %struct.dpp_configuration** %232, align 8
  %233 = load %struct.dpp_configuration*, %struct.dpp_configuration** %9, align 8
  %234 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %235 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %234, i32 0, i32 0
  store %struct.dpp_configuration* %233, %struct.dpp_configuration** %235, align 8
  store i32 0, i32* %3, align 4
  br label %241

236:                                              ; preds = %228, %219, %194, %158, %141, %121, %90, %88, %38, %24
  %237 = load %struct.dpp_configuration*, %struct.dpp_configuration** %8, align 8
  %238 = call i32 @dpp_configuration_free(%struct.dpp_configuration* %237)
  %239 = load %struct.dpp_configuration*, %struct.dpp_configuration** %9, align 8
  %240 = call i32 @dpp_configuration_free(%struct.dpp_configuration* %239)
  store i32 -1, i32* %3, align 4
  br label %241

241:                                              ; preds = %236, %229, %44
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local %struct.dpp_configuration* @dpp_configuration_alloc(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i8*, i64) #1

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @dpp_configuration_valid(%struct.dpp_configuration*) #1

declare dso_local i32 @dpp_configuration_free(%struct.dpp_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
