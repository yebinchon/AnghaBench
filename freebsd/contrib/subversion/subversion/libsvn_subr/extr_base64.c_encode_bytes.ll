; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_base64.c_encode_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_base64.c_encode_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@BASE64_LINELEN = common dso_local global i32 0, align 4
@BYTES_PER_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32, i8*, i64*, i64*, i64)* @encode_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_bytes(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sdiv i32 %25, 3
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %18, align 4
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @BASE64_LINELEN, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %18, align 4
  br label %36

36:                                               ; preds = %30, %7
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @svn_stringbuf_ensure(%struct.TYPE_7__* %37, i64 %43)
  br label %45

45:                                               ; preds = %127, %36
  %46 = load i8*, i8** %17, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i64*, i64** %12, align 8
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 3, %52
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %45
  %56 = load i64*, i64** %12, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i64*, i64** %13, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63, %59
  %67 = load i8*, i8** %17, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = load i32, i32* @BYTES_PER_LINE, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp sge i64 %71, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %66
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @encode_line(%struct.TYPE_7__* %76, i8* %77)
  %79 = load i32, i32* @BYTES_PER_LINE, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %16, align 8
  %83 = load i32, i32* @BASE64_LINELEN, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %13, align 8
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %84
  store i64 %87, i64* %85, align 8
  br label %114

88:                                               ; preds = %66, %63, %55
  %89 = load i8*, i8** %11, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %16, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 3, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(i8* %92, i8* %93, i32 %97)
  %99 = load i64*, i64** %12, align 8
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 3, %100
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %16, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %106 = call i32 @encode_group(i8* %104, i8* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %109 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_7__* %107, i8* %108, i32 4)
  %110 = load i64*, i64** %12, align 8
  store i64 0, i64* %110, align 8
  %111 = load i64*, i64** %13, align 8
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %88, %75
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i64*, i64** %13, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @BASE64_LINELEN, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_7__* %124, i8 signext 10)
  %126 = load i64*, i64** %13, align 8
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117, %114
  br label %45

128:                                              ; preds = %45
  %129 = load i8*, i8** %11, align 8
  %130 = load i64*, i64** %12, align 8
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** %16, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(i8* %132, i8* %133, i32 %139)
  %141 = load i8*, i8** %17, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = load i64*, i64** %12, align 8
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, %145
  store i64 %148, i64* %146, align 8
  ret void
}

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @encode_line(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @encode_group(i8*, i8*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_7__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
