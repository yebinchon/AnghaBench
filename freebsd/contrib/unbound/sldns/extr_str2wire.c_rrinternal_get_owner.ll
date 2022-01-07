; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64*, i64*, i32*, i64, i32*, i64, i8*, i64)* @rrinternal_get_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_get_owner(i32* %0, i32* %1, i64* %2, i64* %3, i32* %4, i64 %5, i32* %6, i64 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64* %2, i64** %14, align 8
  store i64* %3, i64** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = load i64, i64* %21, align 8
  %29 = call i32 @sldns_bget_token(i32* %26, i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %10
  %32 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @sldns_buffer_position(i32* %33)
  %35 = call i32 @RET_ERR(i32 %32, i64 %34)
  store i32 %35, i32* %11, align 4
  br label %137

36:                                               ; preds = %10
  %37 = load i8*, i8** %20, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* %17, align 8
  %45 = load i64*, i64** %15, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32*, i32** %16, align 8
  store i32* %46, i32** %22, align 8
  br label %57

47:                                               ; preds = %40
  %48 = load i32*, i32** %18, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %19, align 8
  %52 = load i64*, i64** %15, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32*, i32** %18, align 8
  store i32* %53, i32** %22, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i64*, i64** %15, align 8
  store i64 1, i64* %55, align 8
  store i32* bitcast ([2 x i8]* @.str.2 to i32*), i32** %22, align 8
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i64*, i64** %14, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %15, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i64 @sldns_buffer_position(i32* %65)
  %67 = call i32 @RET_ERR(i32 %64, i64 %66)
  store i32 %67, i32* %11, align 4
  br label %137

68:                                               ; preds = %57
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %22, align 8
  %71 = load i64*, i64** %15, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @memmove(i32* %69, i32* %70, i64 %72)
  br label %135

74:                                               ; preds = %36
  %75 = load i8*, i8** %20, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %74
  %80 = load i32*, i32** %18, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* %19, align 8
  %84 = load i64*, i64** %15, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32*, i32** %18, align 8
  store i32* %85, i32** %23, align 8
  br label %96

86:                                               ; preds = %79
  %87 = load i32*, i32** %16, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* %17, align 8
  %91 = load i64*, i64** %15, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32*, i32** %16, align 8
  store i32* %92, i32** %23, align 8
  br label %95

93:                                               ; preds = %86
  %94 = load i64*, i64** %15, align 8
  store i64 1, i64* %94, align 8
  store i32* bitcast ([2 x i8]* @.str.2 to i32*), i32** %23, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i64*, i64** %14, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %15, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = call i64 @sldns_buffer_position(i32* %104)
  %106 = call i32 @RET_ERR(i32 %103, i64 %105)
  store i32 %106, i32* %11, align 4
  br label %137

107:                                              ; preds = %96
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %23, align 8
  %110 = load i64*, i64** %15, align 8
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @memmove(i32* %108, i32* %109, i64 %111)
  br label %134

113:                                              ; preds = %74
  %114 = load i64*, i64** %14, align 8
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %24, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @sldns_str2wire_dname_buf_origin(i8* %116, i32* %117, i64* %24, i32* %118, i64 %119)
  store i32 %120, i32* %25, align 4
  %121 = load i32, i32* %25, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load i32, i32* %25, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i64 @sldns_buffer_position(i32* %125)
  %127 = load i8*, i8** %20, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = sub nsw i64 %126, %128
  %130 = call i32 @RET_ERR_SHIFT(i32 %124, i64 %129)
  store i32 %130, i32* %11, align 4
  br label %137

131:                                              ; preds = %113
  %132 = load i64, i64* %24, align 8
  %133 = load i64*, i64** %15, align 8
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %107
  br label %135

135:                                              ; preds = %134, %68
  %136 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %135, %123, %102, %63, %31
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RET_ERR(i32, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @sldns_str2wire_dname_buf_origin(i8*, i32*, i64*, i32*, i64) #1

declare dso_local i32 @RET_ERR_SHIFT(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
