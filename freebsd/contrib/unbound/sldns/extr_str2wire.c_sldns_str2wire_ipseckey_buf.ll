; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_ipseckey_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_ipseckey_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@LDNS_WIREPARSE_ERR_INVALID_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_ipseckey_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @sldns_buffer_init_frm_data(i32* %13, i32* %15, i32 %17)
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %23, i32* %4, align 4
  br label %183

24:                                               ; preds = %3
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %26 = call i64 @sldns_bget_token(i32* %13, i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 512)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %30 = call i32 @sldns_buffer_position(i32* %13)
  %31 = call i32 @RET_ERR(i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %183

32:                                               ; preds = %24
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %34 = call i64 @atoi(i8* %33)
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %39 = call i64 @sldns_bget_token(i32* %13, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 512)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %43 = call i32 @sldns_buffer_position(i32* %13)
  %44 = call i32 @RET_ERR(i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %183

45:                                               ; preds = %32
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %47 = call i64 @atoi(i8* %46)
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %55 = call i64 @sldns_bget_token(i32* %13, i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 512)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %59 = call i32 @sldns_buffer_position(i32* %13)
  %60 = call i32 @RET_ERR(i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %183

61:                                               ; preds = %45
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %63 = call i64 @atoi(i8* %62)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %68 = call i64 @sldns_bget_token(i32* %13, i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 512)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %72 = call i32 @sldns_buffer_position(i32* %13)
  %73 = call i32 @RET_ERR(i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %183

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %83 = call i32 @sldns_buffer_position(i32* %13)
  %84 = call i32 @RET_ERR(i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %183

85:                                               ; preds = %77
  store i64 0, i64* %8, align 8
  br label %147

86:                                               ; preds = %74
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 3
  store i64 %92, i64* %8, align 8
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = call i32 @sldns_str2wire_a_buf(i8* %93, i32* %95, i64* %8)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @sldns_buffer_position(i32* %13)
  %102 = call i32 @RET_ERR_SHIFT(i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %183

103:                                              ; preds = %89
  br label %146

104:                                              ; preds = %86
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %109, 3
  store i64 %110, i64* %8, align 8
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = call i32 @sldns_str2wire_aaaa_buf(i8* %111, i32* %113, i64* %8)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @sldns_buffer_position(i32* %13)
  %120 = call i32 @RET_ERR_SHIFT(i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %183

121:                                              ; preds = %107
  br label %145

122:                                              ; preds = %104
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, 3
  store i64 %128, i64* %8, align 8
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = call i32 @sldns_str2wire_dname_buf(i8* %129, i32* %131, i64* %8)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %125
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @sldns_buffer_position(i32* %13)
  %138 = call i32 @RET_ERR_SHIFT(i32 %136, i32 %137)
  store i32 %138, i32* %4, align 4
  br label %183

139:                                              ; preds = %125
  br label %144

140:                                              ; preds = %122
  %141 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  %142 = call i32 @sldns_buffer_position(i32* %13)
  %143 = call i32 @RET_ERR(i32 %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %183

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %121
  br label %146

146:                                              ; preds = %145, %103
  br label %147

147:                                              ; preds = %146, %85
  %148 = load i64*, i64** %7, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add i64 3, %150
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %155 = call i32 @sldns_buffer_position(i32* %13)
  %156 = call i32 @RET_ERR(i32 %154, i32 %155)
  store i32 %156, i32* %4, align 4
  br label %183

157:                                              ; preds = %147
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %159, 3
  %161 = load i64, i64* %8, align 8
  %162 = sub i64 %160, %161
  store i64 %162, i64* %9, align 8
  %163 = call i64 @sldns_buffer_current(i32* %13)
  %164 = inttoptr i64 %163 to i8*
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = call i32 @sldns_str2wire_b64_buf(i8* %164, i32* %168, i64* %9)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %157
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @sldns_buffer_position(i32* %13)
  %175 = call i32 @RET_ERR_SHIFT(i32 %173, i32 %174)
  store i32 %175, i32* %4, align 4
  br label %183

176:                                              ; preds = %157
  %177 = load i64, i64* %8, align 8
  %178 = add i64 3, %177
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %178, %179
  %181 = load i64*, i64** %7, align 8
  store i64 %180, i64* %181, align 8
  %182 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %176, %172, %153, %140, %135, %117, %99, %81, %70, %57, %41, %28, %22
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sldns_bget_token(i32*, i8*, i8*, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sldns_str2wire_a_buf(i8*, i32*, i64*) #1

declare dso_local i32 @RET_ERR_SHIFT(i32, i32) #1

declare dso_local i32 @sldns_str2wire_aaaa_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #1

declare dso_local i32 @sldns_str2wire_b64_buf(i8*, i32*, i64*) #1

declare dso_local i64 @sldns_buffer_current(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
