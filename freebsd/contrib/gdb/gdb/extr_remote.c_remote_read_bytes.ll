; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remote_read_bytes(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 (...) @get_memory_read_packet_size()
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i8* @alloca(i64 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %95, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 %27, 2
  %29 = call i32 @min(i32 %26, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @remote_address_masked(i64 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %12, align 8
  store i8 109, i8* %33, align 1
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @hexnumstr(i8* %35, i32 %37)
  %39 = load i8*, i8** %12, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %12, align 8
  store i8 44, i8* %42, align 1
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @hexnumstr(i8* %44, i32 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @putpkt(i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @getpkt(i8* %53, i64 %54, i32 0)
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 69
  br i1 %60, label %61, label %81

61:                                               ; preds = %25
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isxdigit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isxdigit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %109

81:                                               ; preds = %73, %67, %61, %25
  %82 = load i8*, i8** %8, align 8
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @hex2bin(i8* %83, i8* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %4, align 4
  br label %109

95:                                               ; preds = %81
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %22

107:                                              ; preds = %22
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %89, %79
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @get_memory_read_packet_size(...) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @remote_address_masked(i64) #1

declare dso_local i32 @hexnumstr(i8*, i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i64, i32) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @hex2bin(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
