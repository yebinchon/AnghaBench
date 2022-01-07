; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mech_switch.c__gss_string_to_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mech_switch.c__gss_string_to_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @_gss_string_to_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gss_string_to_oid(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  store i32 0, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %36, %2
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 46)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  store i8* %37, i8** %10, align 8
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %194

43:                                               ; preds = %38
  store i8* null, i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %190, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %193

47:                                               ; preds = %44
  store i64 0, i64* %9, align 8
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %168, %47
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %172

52:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 46)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 46
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ false, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %83

73:                                               ; preds = %71
  %74 = load i32, i32* %13, align 4
  %75 = mul i32 10, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  %80 = add i32 %75, %79
  store i32 %80, i32* %13, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  br label %61

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = mul i32 %90, 40
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %12, align 8
  store i8 %92, i8* %93, align 1
  br label %94

94:                                               ; preds = %89, %86
  br label %167

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = add i32 %105, %102
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %103, align 1
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %12, align 8
  br label %110

110:                                              ; preds = %101, %98
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %166

113:                                              ; preds = %95
  %114 = load i32, i32* %8, align 4
  %115 = icmp sge i32 %114, 2
  br i1 %115, label %116, label %165

116:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %124, %116
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %14, align 4
  %126 = lshr i32 %125, 7
  store i32 %126, i32* %14, align 4
  br label %118

127:                                              ; preds = %118
  %128 = load i32, i32* %15, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %130, %127
  br label %132

132:                                              ; preds = %159, %131
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %132
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = load i32, i32* %15, align 4
  %140 = sub i32 %139, 1
  %141 = mul i32 7, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = lshr i32 %142, %143
  %145 = and i32 %144, 127
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %12, align 8
  store i8 %146, i8* %147, align 1
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load i8*, i8** %12, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = or i32 %153, 128
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %151, align 1
  br label %156

156:                                              ; preds = %150, %138
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %12, align 8
  br label %159

159:                                              ; preds = %156, %135
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %9, align 8
  %162 = load i32, i32* %15, align 4
  %163 = add i32 %162, -1
  store i32 %163, i32* %15, align 4
  br label %132

164:                                              ; preds = %132
  br label %165

165:                                              ; preds = %164, %113
  br label %166

166:                                              ; preds = %165, %110
  br label %167

167:                                              ; preds = %166, %94
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %11, align 8
  store i8* %169, i8** %10, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %49

172:                                              ; preds = %49
  %173 = load i8*, i8** %12, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %172
  %176 = load i64, i64* %9, align 8
  %177 = call i8* @malloc(i64 %176)
  store i8* %177, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @ENOMEM, align 4
  store i32 %181, i32* %3, align 4
  br label %194

182:                                              ; preds = %175
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %182, %172
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %44

193:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %180, %41
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
