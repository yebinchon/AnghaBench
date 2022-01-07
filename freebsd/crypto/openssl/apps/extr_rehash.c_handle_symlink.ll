; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_handle_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_handle_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@suffixes = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @handle_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_symlink(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %43, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = call i32 @isxdigit(i8 zeroext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %123

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 4
  store i32 %36, i32* %6, align 4
  %37 = load i8, i8* %10, align 1
  %38 = call i64 @OPENSSL_hexchar2int(i8 zeroext %37)
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 46
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %123

56:                                               ; preds = %46
  %57 = load i8**, i8*** @suffixes, align 8
  %58 = call i32 @OSSL_NELEM(i8** %57)
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %80, %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i8**, i8*** @suffixes, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %16, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8*, i8** %16, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = call i64 @strncasecmp(i8* %69, i8* %73, i64 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %83

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %60

83:                                               ; preds = %78, %60
  %84 = load i8**, i8*** @suffixes, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 @strtoul(i8* %97, i8** %13, i32 10)
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %123

104:                                              ; preds = %83
  %105 = load i8*, i8** %5, align 8
  %106 = trunc i64 %18 to i32
  %107 = call i32 @readlink(i8* %105, i8* %20, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %14, align 4
  %112 = trunc i64 %18 to i32
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %104
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %20, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @add_entry(i32 %119, i32 %120, i8* %20, i32* null, i32 0, i32 %121)
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %123

123:                                              ; preds = %115, %114, %103, %55, %33
  %124 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isxdigit(i8 zeroext) #2

declare dso_local i64 @OPENSSL_hexchar2int(i8 zeroext) #2

declare dso_local i32 @OSSL_NELEM(i8**) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @add_entry(i32, i32, i8*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
