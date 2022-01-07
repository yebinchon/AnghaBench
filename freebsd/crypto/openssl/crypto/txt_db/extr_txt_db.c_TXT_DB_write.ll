; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/txt_db/extr_txt_db.c_TXT_DB_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/txt_db/extr_txt_db.c_TXT_DB_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TXT_DB_write(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i64 0, i64* %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i64 -1, i64* %15, align 8
  %16 = call %struct.TYPE_8__* (...) @BUF_MEM_new()
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %14, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %141

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @sk_OPENSSL_PSTRING_num(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %136, %19
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %139

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i8** @sk_OPENSSL_PSTRING_value(i32 %34, i64 %35)
  store i8** %36, i8*** %12, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %56, %31
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i8**, i8*** %12, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i8**, i8*** %12, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = load i64, i64* %9, align 8
  %62 = mul nsw i64 %61, 2
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @BUF_MEM_grow_clean(%struct.TYPE_8__* %60, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %141

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %11, align 8
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %109, %69
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  %78 = load i8**, i8*** %12, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %105

91:                                               ; preds = %85
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 9
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 92, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %13, align 8
  %102 = load i8, i8* %100, align 1
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %11, align 8
  store i8 %102, i8* %103, align 1
  br label %85

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %11, align 8
  store i8 9, i8* %107, align 1
  br label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %73

112:                                              ; preds = %73
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8 10, i8* %114, align 1
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %115 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  store i64 %121, i64* %6, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 @BIO_write(i32* %122, i8* %125, i32 %127)
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %112
  br label %141

132:                                              ; preds = %112
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %5, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %5, align 8
  br label %27

139:                                              ; preds = %27
  %140 = load i64, i64* %10, align 8
  store i64 %140, i64* %15, align 8
  br label %141

141:                                              ; preds = %139, %131, %68, %18
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = call i32 @BUF_MEM_free(%struct.TYPE_8__* %142)
  %144 = load i64, i64* %15, align 8
  ret i64 %144
}

declare dso_local %struct.TYPE_8__* @BUF_MEM_new(...) #1

declare dso_local i64 @sk_OPENSSL_PSTRING_num(i32) #1

declare dso_local i8** @sk_OPENSSL_PSTRING_value(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BUF_MEM_grow_clean(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
