; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rduri.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rduri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32* }

@_warc_rduri._key = internal constant [19 x i8] c"\0D\0AWARC-Target-URI:\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @_warc_rduri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_warc_rduri(%struct.TYPE_3__* noalias sret %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %1, i8** %4, align 8
  store i64 %2, i64* %5, align 8
  %10 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i8* @xmemmem(i8* %11, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_warc_rduri._key, i64 0, i64 0), i32 18)
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %129

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 18
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @_warc_find_eol(i8* %20, i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %129

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 9
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ true, %37 ], [ %46, %42 ]
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i1 [ false, %33 ], [ %48, %47 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %33

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i8* @xmemmem(i8* %55, i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i8* %62, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %129

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %78, %65
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isspace(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %129

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  br label %67

81:                                               ; preds = %67
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = icmp ult i8* %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %129

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @memcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %119

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @memcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @memcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %115, %102
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ult i8* %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 47
  br label %113

113:                                              ; preds = %107, %103
  %114 = phi i1 [ false, %103 ], [ %112, %107 ]
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %103

116:                                              ; preds = %113
  br label %118

117:                                              ; preds = %98
  br label %129

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  br label %129

129:                                              ; preds = %119, %117, %86, %76, %64, %31, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @xmemmem(i8*, i32, i8*, i32) #2

declare dso_local i8* @_warc_find_eol(i8*, i32) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
