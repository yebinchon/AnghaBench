; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i64)* @runtest_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtest_users(i32* %0, i8** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca %struct.passwd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @cap_setpwent(i32* %15)
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %63, %4
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.passwd* @cap_getpwent(i32* %18)
  store %struct.passwd* %19, %struct.passwd** %11, align 8
  %20 = load %struct.passwd*, %struct.passwd** %11, align 8
  %21 = icmp eq %struct.passwd* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %64

23:                                               ; preds = %17
  %24 = load i32, i32* %14, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %54, %23
  %27 = load i32, i32* %13, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.passwd*, %struct.passwd** %11, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strcmp(i8* %36, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.passwd*, %struct.passwd** %11, align 8
  %49 = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42, %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %26

57:                                               ; preds = %52, %26
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %214

63:                                               ; preds = %57
  br label %17

64:                                               ; preds = %22
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %214

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @cap_setpwent(i32* %71)
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %120, %70
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %76 = call i32 @cap_getpwent_r(i32* %74, %struct.passwd* %12, i8* %75, i32 1024, %struct.passwd** %11)
  %77 = load %struct.passwd*, %struct.passwd** %11, align 8
  %78 = icmp eq %struct.passwd* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %121

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %111, %80
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %9, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load i8**, i8*** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.passwd*, %struct.passwd** %11, align 8
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @strcmp(i8* %93, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %88
  %100 = load i64*, i64** %8, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.passwd*, %struct.passwd** %11, align 8
  %106 = getelementptr inbounds %struct.passwd, %struct.passwd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %114

110:                                              ; preds = %99, %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %83

114:                                              ; preds = %109, %83
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %9, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %214

120:                                              ; preds = %114
  br label %73

121:                                              ; preds = %79
  %122 = load i32, i32* %14, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %214

127:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %145, %127
  %129 = load i32, i32* %13, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %9, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load i32*, i32** %6, align 8
  %135 = load i8**, i8*** %7, align 8
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call %struct.passwd* @cap_getpwnam(i32* %134, i8* %139)
  store %struct.passwd* %140, %struct.passwd** %11, align 8
  %141 = load %struct.passwd*, %struct.passwd** %11, align 8
  %142 = icmp eq %struct.passwd* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %214

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %128

148:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %9, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load i32*, i32** %6, align 8
  %156 = load i8**, i8*** %7, align 8
  %157 = load i32, i32* %13, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %162 = call i32 @cap_getpwnam_r(i32* %155, i8* %160, %struct.passwd* %12, i8* %161, i32 1024, %struct.passwd** %11)
  %163 = load %struct.passwd*, %struct.passwd** %11, align 8
  %164 = icmp eq %struct.passwd* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %214

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %149

170:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %188, %170
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %9, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load i32*, i32** %6, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call %struct.passwd* @cap_getpwuid(i32* %177, i64 %182)
  store %struct.passwd* %183, %struct.passwd** %11, align 8
  %184 = load %struct.passwd*, %struct.passwd** %11, align 8
  %185 = icmp eq %struct.passwd* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  store i32 0, i32* %5, align 4
  br label %214

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %171

191:                                              ; preds = %171
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %210, %191
  %193 = load i32, i32* %13, align 4
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %9, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %192
  %198 = load i32*, i32** %6, align 8
  %199 = load i64*, i64** %8, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %205 = call i32 @cap_getpwuid_r(i32* %198, i64 %203, %struct.passwd* %12, i8* %204, i32 1024, %struct.passwd** %11)
  %206 = load %struct.passwd*, %struct.passwd** %11, align 8
  %207 = icmp eq %struct.passwd* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %214

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %13, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %13, align 4
  br label %192

213:                                              ; preds = %192
  store i32 1, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %208, %186, %165, %143, %126, %119, %69, %62
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @cap_setpwent(i32*) #1

declare dso_local %struct.passwd* @cap_getpwent(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @cap_getpwent_r(i32*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @cap_getpwnam(i32*, i8*) #1

declare dso_local i32 @cap_getpwnam_r(i32*, i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @cap_getpwuid(i32*, i64) #1

declare dso_local i32 @cap_getpwuid_r(i32*, i64, %struct.passwd*, i8*, i32, %struct.passwd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
