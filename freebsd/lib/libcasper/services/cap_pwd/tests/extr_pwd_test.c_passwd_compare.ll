; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_passwd_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_passwd_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, %struct.passwd*)* @passwd_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_compare(%struct.passwd* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %6 = load %struct.passwd*, %struct.passwd** %4, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.passwd*, %struct.passwd** %5, align 8
  %10 = icmp eq %struct.passwd* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %235

12:                                               ; preds = %8, %2
  %13 = load %struct.passwd*, %struct.passwd** %4, align 8
  %14 = icmp eq %struct.passwd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.passwd*, %struct.passwd** %5, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %235

19:                                               ; preds = %15
  %20 = load %struct.passwd*, %struct.passwd** %4, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.passwd*, %struct.passwd** %5, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 10
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @strcmp(i32* %22, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %235

29:                                               ; preds = %19
  %30 = load %struct.passwd*, %struct.passwd** %4, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.passwd*, %struct.passwd** %5, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34, %29
  %40 = load %struct.passwd*, %struct.passwd** %4, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.passwd*, %struct.passwd** %5, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %235

50:                                               ; preds = %44
  %51 = load %struct.passwd*, %struct.passwd** %4, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 9
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @strcmp(i32* %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %235

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.passwd*, %struct.passwd** %4, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.passwd*, %struct.passwd** %5, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %235

70:                                               ; preds = %61
  %71 = load %struct.passwd*, %struct.passwd** %4, align 8
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.passwd*, %struct.passwd** %5, align 8
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %235

79:                                               ; preds = %70
  %80 = load %struct.passwd*, %struct.passwd** %4, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.passwd*, %struct.passwd** %5, align 8
  %84 = getelementptr inbounds %struct.passwd, %struct.passwd* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %235

88:                                               ; preds = %79
  %89 = load %struct.passwd*, %struct.passwd** %4, align 8
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.passwd*, %struct.passwd** %5, align 8
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %93, %88
  %99 = load %struct.passwd*, %struct.passwd** %4, align 8
  %100 = getelementptr inbounds %struct.passwd, %struct.passwd* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.passwd*, %struct.passwd** %5, align 8
  %105 = getelementptr inbounds %struct.passwd, %struct.passwd* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %98
  store i32 0, i32* %3, align 4
  br label %235

109:                                              ; preds = %103
  %110 = load %struct.passwd*, %struct.passwd** %4, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.passwd*, %struct.passwd** %5, align 8
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @strcmp(i32* %112, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %235

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.passwd*, %struct.passwd** %4, align 8
  %122 = getelementptr inbounds %struct.passwd, %struct.passwd* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.passwd*, %struct.passwd** %5, align 8
  %127 = getelementptr inbounds %struct.passwd, %struct.passwd* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %152

130:                                              ; preds = %125, %120
  %131 = load %struct.passwd*, %struct.passwd** %4, align 8
  %132 = getelementptr inbounds %struct.passwd, %struct.passwd* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.passwd*, %struct.passwd** %5, align 8
  %137 = getelementptr inbounds %struct.passwd, %struct.passwd* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %130
  store i32 0, i32* %3, align 4
  br label %235

141:                                              ; preds = %135
  %142 = load %struct.passwd*, %struct.passwd** %4, align 8
  %143 = getelementptr inbounds %struct.passwd, %struct.passwd* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.passwd*, %struct.passwd** %5, align 8
  %146 = getelementptr inbounds %struct.passwd, %struct.passwd* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @strcmp(i32* %144, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %235

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %125
  %153 = load %struct.passwd*, %struct.passwd** %4, align 8
  %154 = getelementptr inbounds %struct.passwd, %struct.passwd* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.passwd*, %struct.passwd** %5, align 8
  %159 = getelementptr inbounds %struct.passwd, %struct.passwd* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %157, %152
  %163 = load %struct.passwd*, %struct.passwd** %4, align 8
  %164 = getelementptr inbounds %struct.passwd, %struct.passwd* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.passwd*, %struct.passwd** %5, align 8
  %169 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %167, %162
  store i32 0, i32* %3, align 4
  br label %235

173:                                              ; preds = %167
  %174 = load %struct.passwd*, %struct.passwd** %4, align 8
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.passwd*, %struct.passwd** %5, align 8
  %178 = getelementptr inbounds %struct.passwd, %struct.passwd* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @strcmp(i32* %176, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %235

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %157
  %185 = load %struct.passwd*, %struct.passwd** %4, align 8
  %186 = getelementptr inbounds %struct.passwd, %struct.passwd* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = load %struct.passwd*, %struct.passwd** %5, align 8
  %191 = getelementptr inbounds %struct.passwd, %struct.passwd* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %216

194:                                              ; preds = %189, %184
  %195 = load %struct.passwd*, %struct.passwd** %4, align 8
  %196 = getelementptr inbounds %struct.passwd, %struct.passwd* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load %struct.passwd*, %struct.passwd** %5, align 8
  %201 = getelementptr inbounds %struct.passwd, %struct.passwd* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %199, %194
  store i32 0, i32* %3, align 4
  br label %235

205:                                              ; preds = %199
  %206 = load %struct.passwd*, %struct.passwd** %4, align 8
  %207 = getelementptr inbounds %struct.passwd, %struct.passwd* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.passwd*, %struct.passwd** %5, align 8
  %210 = getelementptr inbounds %struct.passwd, %struct.passwd* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @strcmp(i32* %208, i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %235

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %189
  %217 = load %struct.passwd*, %struct.passwd** %4, align 8
  %218 = getelementptr inbounds %struct.passwd, %struct.passwd* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.passwd*, %struct.passwd** %5, align 8
  %221 = getelementptr inbounds %struct.passwd, %struct.passwd* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %235

225:                                              ; preds = %216
  %226 = load %struct.passwd*, %struct.passwd** %4, align 8
  %227 = getelementptr inbounds %struct.passwd, %struct.passwd* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.passwd*, %struct.passwd** %5, align 8
  %230 = getelementptr inbounds %struct.passwd, %struct.passwd* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %235

234:                                              ; preds = %225
  store i32 1, i32* %3, align 4
  br label %235

235:                                              ; preds = %234, %233, %224, %214, %204, %182, %172, %150, %140, %118, %108, %87, %78, %69, %59, %49, %28, %18, %11
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
