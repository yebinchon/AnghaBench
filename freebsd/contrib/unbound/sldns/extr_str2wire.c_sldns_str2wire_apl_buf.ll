; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_apl_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_apl_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_INVALID_STR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_apl_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [20 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  store i64 0, i64* %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64*, i64** %7, align 8
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %182

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  %32 = icmp eq i8* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 47)
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 58)
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  %42 = icmp ugt i8* %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %33, %29, %25
  %44 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %44, i32* %4, align 4
  br label %182

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 33
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %8, align 8
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @atoi(i8* %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 58)
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 47)
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  %70 = icmp ugt i64 %69, 64
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %72, i32* %4, align 4
  br label %182

73:                                               ; preds = %55
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strlcpy(i8* %74, i8* %75, i32 64)
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %108

81:                                               ; preds = %73
  %82 = load i32, i32* @AF_INET, align 4
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %84 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = call i64 @inet_pton(i32 %82, i8* %83, i32* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %89, i32* %4, align 4
  br label %182

90:                                               ; preds = %81
  store i64 0, i64* %16, align 8
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i64, i64* %16, align 8
  %93 = icmp ult i64 %92, 4
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 4
  %97 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i64, i64* %16, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %16, align 8
  br label %91

107:                                              ; preds = %91
  br label %141

108:                                              ; preds = %73
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i32, i32* @AF_INET6, align 4
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %114 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = call i64 @inet_pton(i32 %112, i8* %113, i32* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %119, i32* %4, align 4
  br label %182

120:                                              ; preds = %111
  store i64 0, i64* %16, align 8
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i64, i64* %16, align 8
  %123 = icmp ult i64 %122, 16
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %125, 4
  %127 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i64, i64* %16, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %130, %124
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %16, align 8
  br label %121

137:                                              ; preds = %121
  br label %140

138:                                              ; preds = %108
  %139 = load i32, i32* @LDNS_WIREPARSE_ERR_INVALID_STR, align 4
  store i32 %139, i32* %4, align 4
  br label %182

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %107
  %142 = load i8*, i8** %8, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 47)
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %8, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i64 @atoi(i8* %145)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %15, align 4
  %148 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @sldns_write_uint16(i32* %148, i32 %149)
  %151 = load i32, i32* %15, align 4
  %152 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 2
  store i32 %151, i32* %152, align 8
  %153 = load i64, i64* %13, align 8
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 3
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %141
  %159 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, 128
  %162 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 3
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %141
  %164 = load i64*, i64** %7, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = add i64 4, %166
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %170, i32* %4, align 4
  br label %182

171:                                              ; preds = %163
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %174 = load i64, i64* %13, align 8
  %175 = add i64 4, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @memmove(i32* %172, i32* %173, i32 %176)
  %178 = load i64, i64* %13, align 8
  %179 = add i64 4, %178
  %180 = load i64*, i64** %7, align 8
  store i64 %179, i64* %180, align 8
  %181 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %171, %169, %138, %118, %88, %71, %43, %22
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
