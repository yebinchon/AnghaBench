; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_h_hash.c_regress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/hash/extr_h_hash.c_regress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@mflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @regress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regress() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [20 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  br label %8

8:                                                ; preds = %78, %0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* @stdin, align 4
  %11 = call i32* @fgets(i8* %9, i32 1024, i32 %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %82

13:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CHOMP(i8* %16, i32 %17, i32 %18)
  %20 = load i64, i64* @mflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %13
  %23 = call i32 @MD5Init(i32* %6)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @MD5Update(i32* %6, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %37, %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %32 = load i32, i32* @stdin, align 4
  %33 = call i32* @fgets(i8* %31, i32 1024, i32 %32)
  %34 = icmp ne i32* %33, null
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %3, align 4
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @CHOMP(i8* %40, i32 %41, i32 %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @MD5Update(i32* %6, i8* %44, i32 %45)
  br label %27

47:                                               ; preds = %35
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %49 = call i32 @MD5Final(i8* %48, i32* %6)
  store i32 16, i32* %4, align 4
  br label %78

50:                                               ; preds = %13
  %51 = call i32 @SHA1Init(i32* %7)
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @SHA1Update(i32* %7, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %65, %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %60 = load i32, i32* @stdin, align 4
  %61 = call i32* @fgets(i8* %59, i32 1024, i32 %60)
  %62 = icmp ne i32* %61, null
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  br i1 %64, label %65, label %75

65:                                               ; preds = %63
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %3, align 4
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @CHOMP(i8* %68, i32 %69, i32 %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @SHA1Update(i32* %7, i8* %72, i32 %73)
  br label %55

75:                                               ; preds = %63
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %77 = call i32 @SHA1Final(i8* %76, i32* %7)
  store i32 20, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %47
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @hexdump(i8* %79, i32 %80)
  br label %8

82:                                               ; preds = %8
  ret void
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CHOMP(i8*, i32, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #1

declare dso_local i32 @SHA1Final(i8*, i32*) #1

declare dso_local i32 @hexdump(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
