; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_dynamic_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_dynamic_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i32, i32, i32, i32* }

@ENGINE_F_DYNAMIC_CTRL = common dso_local global i32 0, align 4
@ENGINE_R_NOT_LOADED = common dso_local global i32 0, align 4
@ENGINE_R_ALREADY_LOADED = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ENGINE_R_CTRL_COMMAND_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*, void ()*)* @dynamic_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynamic_ctrl(i32* %0, i32 %1, i64 %2, i8* %3, void ()* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void ()*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store void ()* %4, void ()** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_4__* @dynamic_get_data_ctx(i32* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %21 = load i32, i32* @ENGINE_R_NOT_LOADED, align 4
  %22 = call i32 @ENGINEerr(i32 %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %178

23:                                               ; preds = %5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %34 = load i32, i32* @ENGINE_R_ALREADY_LOADED, align 4
  %35 = call i32 @ENGINEerr(i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %178

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %173 [
    i32 128, label %38
    i32 129, label %68
    i32 132, label %75
    i32 131, label %105
    i32 130, label %120
    i32 133, label %124
    i32 134, label %139
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* null, i8** %10, align 8
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @OPENSSL_free(i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @OPENSSL_strdup(i8* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %6, align 4
  br label %178

68:                                               ; preds = %36
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i32 1, i32* %6, align 4
  br label %178

75:                                               ; preds = %36
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i8* null, i8** %10, align 8
  br label %83

83:                                               ; preds = %82, %78, %75
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @OPENSSL_free(i8* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i8*, i8** %10, align 8
  %92 = call i8* @OPENSSL_strdup(i8* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %98

95:                                               ; preds = %83
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %6, align 4
  br label %178

105:                                              ; preds = %36
  %106 = load i64, i64* %9, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = icmp sgt i64 %109, 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %113 = load i32, i32* @ENGINE_R_INVALID_ARGUMENT, align 4
  %114 = call i32 @ENGINEerr(i32 %112, i32 %113)
  store i32 0, i32* %6, align 4
  br label %178

115:                                              ; preds = %108
  %116 = load i64, i64* %9, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  store i32 1, i32* %6, align 4
  br label %178

120:                                              ; preds = %36
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = call i32 @dynamic_load(i32* %121, %struct.TYPE_4__* %122)
  store i32 %123, i32* %6, align 4
  br label %178

124:                                              ; preds = %36
  %125 = load i64, i64* %9, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %9, align 8
  %129 = icmp sgt i64 %128, 2
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %124
  %131 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %132 = load i32, i32* @ENGINE_R_INVALID_ARGUMENT, align 4
  %133 = call i32 @ENGINEerr(i32 %131, i32 %132)
  store i32 0, i32* %6, align 4
  br label %178

134:                                              ; preds = %127
  %135 = load i64, i64* %9, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  store i32 1, i32* %6, align 4
  br label %178

139:                                              ; preds = %36
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %142, %139
  %147 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %148 = load i32, i32* @ENGINE_R_INVALID_ARGUMENT, align 4
  %149 = call i32 @ENGINEerr(i32 %147, i32 %148)
  store i32 0, i32* %6, align 4
  br label %178

150:                                              ; preds = %142
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @OPENSSL_strdup(i8* %151)
  store i8* %152, i8** %14, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %157 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %158 = call i32 @ENGINEerr(i32 %156, i32 %157)
  store i32 0, i32* %6, align 4
  br label %178

159:                                              ; preds = %150
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @sk_OPENSSL_STRING_push(i32 %162, i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %159
  %167 = load i8*, i8** %14, align 8
  %168 = call i32 @OPENSSL_free(i8* %167)
  %169 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %170 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %171 = call i32 @ENGINEerr(i32 %169, i32 %170)
  store i32 0, i32* %6, align 4
  br label %178

172:                                              ; preds = %159
  store i32 1, i32* %6, align 4
  br label %178

173:                                              ; preds = %36
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* @ENGINE_F_DYNAMIC_CTRL, align 4
  %176 = load i32, i32* @ENGINE_R_CTRL_COMMAND_NOT_IMPLEMENTED, align 4
  %177 = call i32 @ENGINEerr(i32 %175, i32 %176)
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %174, %172, %166, %155, %146, %134, %130, %120, %115, %111, %98, %68, %61, %32, %19
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_4__* @dynamic_get_data_ctx(i32*) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @dynamic_load(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @sk_OPENSSL_STRING_push(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
