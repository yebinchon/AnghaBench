; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_receive_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_receive_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYN = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@mips_initializing = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdtarg = common dso_local global i32 0, align 4
@mips_syn_garbage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Debug protocol failure:  more than %d characters before a sync.\00", align 1
@HDR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32)* @mips_receive_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_receive_header(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %11

11:                                               ; preds = %4, %113
  br label %12

12:                                               ; preds = %76, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SYN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @mips_readchar(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %114

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SYN, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load i32, i32* @mips_initializing, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @remote_debug, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @isprint(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @isspace(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @gdb_stdtarg, align 4
  %44 = call i32 @fputc_unfiltered(i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @gdb_stdtarg, align 4
  %48 = call i32 @fputc_readable(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @gdb_stdtarg, align 4
  %51 = call i32 @gdb_flush(i32 %50)
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @isprint(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @isspace(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %60, %56, %52
  %65 = load i32, i32* @mips_syn_garbage, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @mips_syn_garbage, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @mips_syn_garbage, align 4
  %74 = call i32 @mips_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67, %64
  br label %76

76:                                               ; preds = %75, %23
  br label %12

77:                                               ; preds = %12
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @HDR_LENGTH, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @mips_readchar(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %114

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SYN, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @HDR_CHECK(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %89
  br label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 %100, i8* %104, align 1
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %78

108:                                              ; preds = %97, %78
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @HDR_LENGTH, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %114

113:                                              ; preds = %108
  br label %11

114:                                              ; preds = %112, %88, %22
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @mips_readchar(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @fputc_unfiltered(i32, i32) #1

declare dso_local i32 @fputc_readable(i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @mips_error(i8*, i32) #1

declare dso_local i32 @HDR_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
