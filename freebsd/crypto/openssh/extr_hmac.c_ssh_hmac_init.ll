; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hmac.c_ssh_hmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_hmac_ctx = type { i64, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_hmac_init(%struct.ssh_hmac_ctx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh_hmac_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ssh_hmac_ctx* %0, %struct.ssh_hmac_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %110

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @memcpy(i32* %20, i8* %21, i64 %22)
  br label %40

24:                                               ; preds = %11
  %25 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ssh_digest_memory(i32 %27, i8* %28, i64 %29, i32* %32, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %121

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %17
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 54
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ssh_digest_update(i32 %61, i32* %64, i64 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %121

71:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, 106
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %72

89:                                               ; preds = %72
  %90 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @ssh_digest_update(i32 %92, i32* %95, i64 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %121

102:                                              ; preds = %89
  %103 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @explicit_bzero(i32* %105, i64 %108)
  br label %110

110:                                              ; preds = %102, %3
  %111 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ssh_hmac_ctx*, %struct.ssh_hmac_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.ssh_hmac_ctx, %struct.ssh_hmac_ctx* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @ssh_digest_copy_state(i32 %113, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 -1, i32* %4, align 4
  br label %121

120:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %119, %101, %70, %38
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @ssh_digest_memory(i32, i8*, i64, i32*, i64) #1

declare dso_local i64 @ssh_digest_update(i32, i32*, i64) #1

declare dso_local i32 @explicit_bzero(i32*, i64) #1

declare dso_local i64 @ssh_digest_copy_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
