; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsec_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_nsec_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TYPE0\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_TYPE = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_nsec_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [8192 x i32], align 16
  %15 = alloca [256 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @sldns_buffer_init_frm_data(i32* %16, i32* %21, i32 %23)
  %25 = getelementptr inbounds [8192 x i32], [8192 x i32]* %14, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 32768)
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 1024)
  br label %29

29:                                               ; preds = %79, %46, %3
  %30 = call i64 @sldns_buffer_remaining(i32* %16)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sldns_bget_token(i32* %16, i8* %33, i8* %34, i32 64)
  %36 = icmp ne i32 %35, -1
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %80

39:                                               ; preds = %37
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %41 = call i32 @sldns_get_rr_type_by_name(i8* %40)
  store i32 %41, i32* %17, align 4
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %29

47:                                               ; preds = %39
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TYPE, align 4
  %56 = call i32 @sldns_buffer_position(i32* %16)
  %57 = call i32 @RET_ERR(i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %180

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %17, align 4
  %60 = srem i32 %59, 8
  %61 = ashr i32 128, %60
  %62 = load i32, i32* %17, align 4
  %63 = sdiv i32 %62, 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8192 x i32], [8192 x i32]* %14, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %17, align 4
  %69 = sdiv i32 %68, 256
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %58
  br label %29

80:                                               ; preds = %37
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64*, i64** %7, align 8
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %180

86:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %173, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sdiv i32 %89, 256
  %91 = icmp sle i32 %88, %90
  br i1 %91, label %92, label %176

92:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %173

99:                                               ; preds = %92
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %116, %99
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 32
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8192 x i32], [8192 x i32]* %14, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %100

119:                                              ; preds = %100
  %120 = load i32, i32* %19, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %173

123:                                              ; preds = %119
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = add i64 %127, 2
  %129 = load i64*, i64** %7, align 8
  %130 = load i64, i64* %129, align 8
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %133, i32* %4, align 4
  br label %180

134:                                              ; preds = %123
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 0
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %164, %134
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = mul nsw i32 %150, 32
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8192 x i32], [8192 x i32]* %14, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* %12, align 8
  %159 = add i64 %158, 2
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  store i32 %156, i32* %163, align 4
  br label %164

164:                                              ; preds = %149
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %18, align 4
  br label %145

167:                                              ; preds = %145
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %12, align 8
  br label %173

173:                                              ; preds = %167, %122, %98
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %87

176:                                              ; preds = %87
  %177 = load i64, i64* %12, align 8
  %178 = load i64*, i64** %7, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %132, %83, %54
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i32) #1

declare dso_local i32 @sldns_get_rr_type_by_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
