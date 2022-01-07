; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_int_ctrl_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_int_ctrl_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }

@ENGINE_CTRL_GET_FIRST_CMD_TYPE = common dso_local global i32 0, align 4
@ENGINE_CTRL_GET_CMD_FROM_NAME = common dso_local global i32 0, align 4
@ENGINE_F_INT_CTRL_HELPER = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_CMD_NAME = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_CMD_NUMBER = common dso_local global i32 0, align 4
@int_no_description = common dso_local global i32* null, align 8
@ENGINE_R_INTERNAL_LIST_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i64, i8*, void ()*)* @int_ctrl_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_ctrl_helper(%struct.TYPE_8__* %0, i32 %1, i64 %2, i8* %3, void ()* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void ()*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store void ()* %4, void ()** %11, align 8
  %15 = load i8*, i8** %10, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ENGINE_CTRL_GET_FIRST_CMD_TYPE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i64 @int_ctrl_cmd_is_null(%struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %19
  store i32 0, i32* %6, align 4
  br label %172

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  br label %172

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ENGINE_CTRL_GET_CMD_FROM_NAME, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 132
  br i1 %46, label %47, label %55

47:                                               ; preds = %44, %41, %37
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @ENGINE_F_INT_CTRL_HELPER, align 4
  %52 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %53 = call i32 @ENGINEerr(i32 %51, i32 %52)
  store i32 -1, i32* %6, align 4
  br label %172

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ENGINE_CTRL_GET_CMD_FROM_NAME, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = icmp eq %struct.TYPE_7__* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @int_ctrl_cmd_by_name(%struct.TYPE_7__* %67, i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64, %59
  %72 = load i32, i32* @ENGINE_F_INT_CTRL_HELPER, align 4
  %73 = load i32, i32* @ENGINE_R_INVALID_CMD_NAME, align 4
  %74 = call i32 @ENGINEerr(i32 %72, i32 %73)
  store i32 -1, i32* %6, align 4
  br label %172

75:                                               ; preds = %64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %6, align 4
  br label %172

84:                                               ; preds = %55
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp eq %struct.TYPE_7__* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @int_ctrl_cmd_by_num(%struct.TYPE_7__* %92, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89, %84
  %98 = load i32, i32* @ENGINE_F_INT_CTRL_HELPER, align 4
  %99 = load i32, i32* @ENGINE_R_INVALID_CMD_NUMBER, align 4
  %100 = call i32 @ENGINEerr(i32 %98, i32 %99)
  store i32 -1, i32* %6, align 4
  br label %172

101:                                              ; preds = %89
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %14, align 8
  %108 = load i32, i32* %8, align 4
  switch i32 %108, label %168 [
    i32 128, label %109
    i32 129, label %122
    i32 130, label %127
    i32 131, label %134
    i32 132, label %148
    i32 133, label %164
  ]

109:                                              ; preds = %101
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 1
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %14, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %113 = call i64 @int_ctrl_cmd_is_null(%struct.TYPE_7__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %120

116:                                              ; preds = %109
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  br label %120

120:                                              ; preds = %116, %115
  %121 = phi i32 [ 0, %115 ], [ %119, %116 ]
  store i32 %121, i32* %6, align 4
  br label %172

122:                                              ; preds = %101
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @strlen(i32* %125)
  store i32 %126, i32* %6, align 4
  br label %172

127:                                              ; preds = %101
  %128 = load i8*, i8** %13, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32* @strcpy(i8* %128, i32* %131)
  %133 = call i32 @strlen(i32* %132)
  store i32 %133, i32* %6, align 4
  br label %172

134:                                              ; preds = %101
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32*, i32** @int_no_description, align 8
  br label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  br label %145

145:                                              ; preds = %141, %139
  %146 = phi i32* [ %140, %139 ], [ %144, %141 ]
  %147 = call i32 @strlen(i32* %146)
  store i32 %147, i32* %6, align 4
  br label %172

148:                                              ; preds = %101
  %149 = load i8*, i8** %13, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32*, i32** @int_no_description, align 8
  br label %160

156:                                              ; preds = %148
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  br label %160

160:                                              ; preds = %156, %154
  %161 = phi i32* [ %155, %154 ], [ %159, %156 ]
  %162 = call i32* @strcpy(i8* %149, i32* %161)
  %163 = call i32 @strlen(i32* %162)
  store i32 %163, i32* %6, align 4
  br label %172

164:                                              ; preds = %101
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %6, align 4
  br label %172

168:                                              ; preds = %101
  %169 = load i32, i32* @ENGINE_F_INT_CTRL_HELPER, align 4
  %170 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %171 = call i32 @ENGINEerr(i32 %169, i32 %170)
  store i32 -1, i32* %6, align 4
  br label %172

172:                                              ; preds = %168, %164, %160, %145, %127, %122, %120, %97, %75, %71, %50, %31, %30
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i64 @int_ctrl_cmd_is_null(%struct.TYPE_7__*) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @int_ctrl_cmd_by_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @int_ctrl_cmd_by_num(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @strcpy(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
