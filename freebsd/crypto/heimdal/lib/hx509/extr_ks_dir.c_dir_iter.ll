; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dircursor = type { i32*, i32*, i32 }
%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"FILE:%s/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i32**)* @dir_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_iter(i32 %0, i32 %1, i8* %2, i8* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.dircursor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.dircursor*
  store %struct.dircursor* %17, %struct.dircursor** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32**, i32*** %11, align 8
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %132, %5
  %20 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %21 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %27 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %30 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = call i32 @hx509_certs_next_cert(i32 %25, i32* %28, i32* %31, i32** %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %39 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %42 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @hx509_certs_end_seq(i32 %37, i32* %40, i32* %43)
  %45 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %46 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %48 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %47, i32 0, i32 0
  %49 = call i32 @hx509_certs_free(i32** %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %137

51:                                               ; preds = %24
  %52 = load i32**, i32*** %11, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %135

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %59 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %62 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @hx509_certs_end_seq(i32 %57, i32* %60, i32* %63)
  %65 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %66 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %68 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %67, i32 0, i32 0
  %69 = call i32 @hx509_certs_free(i32** %68)
  br label %70

70:                                               ; preds = %56, %19
  %71 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %72 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.dirent* @readdir(i32 %73)
  store %struct.dirent* %74, %struct.dirent** %14, align 8
  %75 = load %struct.dirent*, %struct.dirent** %14, align 8
  %76 = icmp eq %struct.dirent* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %135

78:                                               ; preds = %70
  %79 = load %struct.dirent*, %struct.dirent** %14, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @strcmp(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.dirent*, %struct.dirent** %14, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @strcmp(i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %78
  br label %132

91:                                               ; preds = %84
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.dirent*, %struct.dirent** %14, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %92, i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %6, align 4
  br label %137

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %15, align 8
  %103 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %104 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %103, i32 0, i32 0
  %105 = call i32 @hx509_certs_init(i32 %101, i8* %102, i32 0, i32* null, i32** %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %111 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %114 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %113, i32 0, i32 1
  %115 = call i32 @hx509_certs_start_seq(i32 %109, i32* %112, i32** %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %120 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %119, i32 0, i32 0
  %121 = call i32 @hx509_certs_free(i32** %120)
  br label %122

122:                                              ; preds = %118, %108
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.dircursor*, %struct.dircursor** %12, align 8
  %128 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @free(i8* %130)
  br label %132

132:                                              ; preds = %129, %90
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %19, label %135

135:                                              ; preds = %132, %77, %55
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %98, %36
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @hx509_certs_next_cert(i32, i32*, i32*, i32**) #1

declare dso_local i32 @hx509_certs_end_seq(i32, i32*, i32*) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @hx509_certs_start_seq(i32, i32*, i32**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
