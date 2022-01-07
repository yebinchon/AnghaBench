; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c__krb5_erase_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c__krb5_erase_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64 }

@errno = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_erase_file(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @lstat(i8* %10, %struct.stat* %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @errno, align 8
  store i64 %15, i64* %3, align 8
  br label %118

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_BINARY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i8* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %118

29:                                               ; preds = %24
  %30 = load i64, i64* @errno, align 8
  store i64 %30, i64* %3, align 8
  br label %118

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rk_cloexec(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @_krb5_xlock(i32 %34, i32 %35, i32 1, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %3, align 8
  br label %118

45:                                               ; preds = %31
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @unlink(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @_krb5_xunlock(i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i64, i64* @errno, align 8
  store i64 %55, i64* %3, align 8
  br label %118

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fstat(i32 %57, %struct.stat* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @_krb5_xunlock(i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i64, i64* @errno, align 8
  store i64 %67, i64* %3, align 8
  br label %118

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @_krb5_xunlock(i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i64, i64* @EPERM, align 8
  store i64 %86, i64* %3, align 8
  br label %118

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @_krb5_xunlock(i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @close(i32 %95)
  store i64 0, i64* %3, align 8
  br label %118

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @scrub_file(i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @_krb5_xunlock(i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %3, align 8
  br label %118

110:                                              ; preds = %97
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @_krb5_xunlock(i32 %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %110, %102, %91, %80, %61, %49, %40, %29, %28, %14
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @rk_cloexec(i32) #1

declare dso_local i32 @_krb5_xlock(i32, i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @_krb5_xunlock(i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @scrub_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
