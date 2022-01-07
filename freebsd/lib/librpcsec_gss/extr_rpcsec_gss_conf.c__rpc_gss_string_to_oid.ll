; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_conf.c__rpc_gss_string_to_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss_conf.c__rpc_gss_string_to_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @_rpc_gss_string_to_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rpc_gss_string_to_oid(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 46)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %11, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %10, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %190

39:                                               ; preds = %34
  store i8* null, i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %186, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %189

43:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %164, %43
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %168

48:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 46)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 46
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %79

69:                                               ; preds = %67
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 10, %70
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  br label %57

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %86, 40
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %12, align 8
  store i8 %88, i8* %89, align 1
  br label %90

90:                                               ; preds = %85, %82
  br label %163

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %101, %98
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %12, align 8
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %162

109:                                              ; preds = %91
  %110 = load i32, i32* %8, align 4
  %111 = icmp sge i32 %110, 2
  br i1 %111, label %112, label %161

112:                                              ; preds = %109
  store i32 0, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %120, %112
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = ashr i32 %121, 7
  store i32 %122, i32* %14, align 4
  br label %114

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  br label %127

127:                                              ; preds = %126, %123
  br label %128

128:                                              ; preds = %155, %127
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %128
  %132 = load i8*, i8** %12, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %131
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %135, 1
  %137 = mul nsw i32 7, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %16, align 4
  %140 = ashr i32 %138, %139
  %141 = and i32 %140, 127
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %12, align 8
  store i8 %142, i8* %143, align 1
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %134
  %147 = load i8*, i8** %12, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = or i32 %149, 128
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  br label %152

152:                                              ; preds = %146, %134
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %12, align 8
  br label %155

155:                                              ; preds = %152, %131
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %15, align 4
  br label %128

160:                                              ; preds = %128
  br label %161

161:                                              ; preds = %160, %109
  br label %162

162:                                              ; preds = %161, %106
  br label %163

163:                                              ; preds = %162, %90
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %11, align 8
  store i8* %165, i8** %10, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %45

168:                                              ; preds = %45
  %169 = load i8*, i8** %12, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %185, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %9, align 4
  %173 = call i8* @malloc(i32 %172)
  store i8* %173, i8** %12, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @ENOMEM, align 4
  store i32 %177, i32* %3, align 4
  br label %190

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %168
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %40

189:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %176, %37
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
