; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_passwd_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_passwd_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i64 }

@PW_NAME = common dso_local global i32 0, align 4
@PW_PASSWD = common dso_local global i32 0, align 4
@_PWF_PASSWD = common dso_local global i32 0, align 4
@PW_UID = common dso_local global i32 0, align 4
@PW_GID = common dso_local global i32 0, align 4
@_PWF_CHANGE = common dso_local global i32 0, align 4
@PW_CHANGE = common dso_local global i32 0, align 4
@PW_CLASS = common dso_local global i32 0, align 4
@_PWF_CLASS = common dso_local global i32 0, align 4
@PW_GECOS = common dso_local global i32 0, align 4
@_PWF_GECOS = common dso_local global i32 0, align 4
@PW_DIR = common dso_local global i32 0, align 4
@_PWF_DIR = common dso_local global i32 0, align 4
@PW_SHELL = common dso_local global i32 0, align 4
@_PWF_SHELL = common dso_local global i32 0, align 4
@_PWF_EXPIRE = common dso_local global i32 0, align 4
@PW_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*)* @passwd_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_fields(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.passwd*, %struct.passwd** %2, align 8
  %5 = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.passwd*, %struct.passwd** %2, align 8
  %10 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load i32, i32* @PW_NAME, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %8, %1
  %21 = load %struct.passwd*, %struct.passwd** %2, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.passwd*, %struct.passwd** %2, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @PW_PASSWD, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %25, %20
  %38 = load %struct.passwd*, %struct.passwd** %2, align 8
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @_PWF_PASSWD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @PW_PASSWD, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.passwd*, %struct.passwd** %2, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @PW_UID, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.passwd*, %struct.passwd** %2, align 8
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @PW_GID, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.passwd*, %struct.passwd** %2, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.passwd*, %struct.passwd** %2, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @_PWF_CHANGE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72, %67
  %80 = load i32, i32* @PW_CHANGE, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.passwd*, %struct.passwd** %2, align 8
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.passwd*, %struct.passwd** %2, align 8
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i32 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* @PW_CLASS, align 4
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  br label %112

100:                                              ; preds = %88, %83
  %101 = load %struct.passwd*, %struct.passwd** %2, align 8
  %102 = getelementptr inbounds %struct.passwd, %struct.passwd* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @_PWF_CLASS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @PW_CLASS, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %100
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.passwd*, %struct.passwd** %2, align 8
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 7
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.passwd*, %struct.passwd** %2, align 8
  %119 = getelementptr inbounds %struct.passwd, %struct.passwd* %118, i32 0, i32 7
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i32, i32* @PW_GECOS, align 4
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  br label %141

129:                                              ; preds = %117, %112
  %130 = load %struct.passwd*, %struct.passwd** %2, align 8
  %131 = getelementptr inbounds %struct.passwd, %struct.passwd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @_PWF_GECOS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @PW_GECOS, align 4
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %129
  br label %141

141:                                              ; preds = %140, %125
  %142 = load %struct.passwd*, %struct.passwd** %2, align 8
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %142, i32 0, i32 8
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load %struct.passwd*, %struct.passwd** %2, align 8
  %148 = getelementptr inbounds %struct.passwd, %struct.passwd* %147, i32 0, i32 8
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @PW_DIR, align 4
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %3, align 4
  br label %170

158:                                              ; preds = %146, %141
  %159 = load %struct.passwd*, %struct.passwd** %2, align 8
  %160 = getelementptr inbounds %struct.passwd, %struct.passwd* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @_PWF_DIR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @PW_DIR, align 4
  %167 = load i32, i32* %3, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %158
  br label %170

170:                                              ; preds = %169, %154
  %171 = load %struct.passwd*, %struct.passwd** %2, align 8
  %172 = getelementptr inbounds %struct.passwd, %struct.passwd* %171, i32 0, i32 9
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load %struct.passwd*, %struct.passwd** %2, align 8
  %177 = getelementptr inbounds %struct.passwd, %struct.passwd* %176, i32 0, i32 9
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load i32, i32* @PW_SHELL, align 4
  %185 = load i32, i32* %3, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %3, align 4
  br label %199

187:                                              ; preds = %175, %170
  %188 = load %struct.passwd*, %struct.passwd** %2, align 8
  %189 = getelementptr inbounds %struct.passwd, %struct.passwd* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @_PWF_SHELL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @PW_SHELL, align 4
  %196 = load i32, i32* %3, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %187
  br label %199

199:                                              ; preds = %198, %183
  %200 = load %struct.passwd*, %struct.passwd** %2, align 8
  %201 = getelementptr inbounds %struct.passwd, %struct.passwd* %200, i32 0, i32 10
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %199
  %205 = load %struct.passwd*, %struct.passwd** %2, align 8
  %206 = getelementptr inbounds %struct.passwd, %struct.passwd* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @_PWF_EXPIRE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204, %199
  %212 = load i32, i32* @PW_EXPIRE, align 4
  %213 = load i32, i32* %3, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
