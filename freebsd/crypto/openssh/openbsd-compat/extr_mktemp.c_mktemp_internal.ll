; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_mktemp.c_mktemp_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_mktemp.c_mktemp_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@TEMPCHARS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NUM_CHARS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mktemp_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mktemp_internal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** @TEMPCHARS, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %15, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %22, %3
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %144

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %10, align 8
  store i32 1, i32* %13, align 4
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %64, %32
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 88
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i1 [ false, %41 ], [ %50, %45 ]
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @INT_MAX, align 4
  %56 = load i32, i32* @NUM_CHARS, align 4
  %57 = udiv i32 %55, %56
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @NUM_CHARS, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %8, align 8
  br label %41

67:                                               ; preds = %51
  %68 = load i32, i32* %13, align 4
  %69 = mul i32 %68, 2
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %138, %67
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %85, %70
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* @NUM_CHARS, align 4
  %78 = call i32 @arc4random_uniform(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %9, align 8
  store i8 %83, i8* %84, align 1
  br label %85

85:                                               ; preds = %76
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  br label %72

88:                                               ; preds = %72
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %137 [
    i32 128, label %90
    i32 129, label %101
    i32 130, label %121
  ]

90:                                               ; preds = %88
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @lstat(i8* %91, %struct.stat* %14)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 -1
  store i32 %99, i32* %4, align 4
  br label %144

100:                                              ; preds = %90
  br label %137

101:                                              ; preds = %88
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* @O_CREAT, align 4
  %104 = load i32, i32* @O_EXCL, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @O_RDWR, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @S_IRUSR, align 4
  %109 = load i32, i32* @S_IWUSR, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @open(i8* %102, i32 %107, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %118, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* @errno, align 4
  %116 = load i32, i32* @EEXIST, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %101
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %4, align 4
  br label %144

120:                                              ; preds = %114
  br label %137

121:                                              ; preds = %88
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* @S_IRUSR, align 4
  %124 = load i32, i32* @S_IWUSR, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @S_IXUSR, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @mkdir(i8* %122, i32 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %144

131:                                              ; preds = %121
  %132 = load i32, i32* @errno, align 4
  %133 = load i32, i32* @EEXIST, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %144

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %88, %136, %120, %100
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, -1
  store i32 %140, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %70, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @EEXIST, align 4
  store i32 %143, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %135, %130, %118, %94, %30
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @arc4random_uniform(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
