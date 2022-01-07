; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_perftest.c_perftest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_perftest.c_perftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i64, i32, i32, i32 }
%struct.cmd = type { i32 }
%struct.nvme_io_test = type { i32, i64, i32, i32, i32 }

@NVME_IO_TEST = common dso_local global i32 0, align 4
@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"refthread\00", align 1
@NVME_TEST_FLAG_REFTHREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@NVME_BIO_TEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Unknown interrupt test type %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Bad number of threads %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@NVME_OPC_READ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@NVME_OPC_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"\22%s\22 not valid opcode.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"No time speciifed\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"ioctl NVME_IO_TEST failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @perftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perftest(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_io_test, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* @NVME_IO_TEST, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @memset(%struct.nvme_io_test* %7, i32 0, i32 32)
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = call i64 @arg_parse(i32 %12, i8** %13, %struct.cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  ret void

18:                                               ; preds = %3
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = load %struct.cmd*, %struct.cmd** %4, align 8
  %25 = call i32 @arg_help(i32 %22, i8** %23, %struct.cmd* %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 1), align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 1), align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @NVME_TEST_FLAG_REFTHREAD, align 4
  %35 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %29, %26
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @NVME_BIO_TEST, align 4
  store i32 %50, i32* %9, align 4
  br label %70

51:                                               ; preds = %45
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @NVME_IO_TEST, align 4
  store i32 %60, i32* %9, align 4
  br label %69

61:                                               ; preds = %55
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = load %struct.cmd*, %struct.cmd** %4, align 8
  %68 = call i32 @arg_help(i32 %65, i8** %66, %struct.cmd* %67)
  br label %69

69:                                               ; preds = %61, %59
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 3), align 8
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 3), align 8
  %76 = icmp sgt i32 %75, 128
  br i1 %76, label %77, label %85

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 3), align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i8**, i8*** %6, align 8
  %83 = load %struct.cmd*, %struct.cmd** %4, align 8
  %84 = call i32 @arg_help(i32 %81, i8** %82, %struct.cmd* %83)
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 3), align 8
  %87 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %89 = call i64 @strcasecmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @NVME_OPC_READ, align 4
  %93 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  br label %110

94:                                               ; preds = %85
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %96 = call i64 @strcasecmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @NVME_OPC_WRITE, align 4
  %100 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  br label %109

101:                                              ; preds = %94
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i8**, i8*** %6, align 8
  %107 = load %struct.cmd*, %struct.cmd** %4, align 8
  %108 = call i32 @arg_help(i32 %105, i8** %106, %struct.cmd* %107)
  br label %109

109:                                              ; preds = %101, %98
  br label %110

110:                                              ; preds = %109, %91
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 4), align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %116 = load i32, i32* %5, align 4
  %117 = load i8**, i8*** %6, align 8
  %118 = load %struct.cmd*, %struct.cmd** %4, align 8
  %119 = call i32 @arg_help(i32 %116, i8** %117, %struct.cmd* %118)
  br label %120

120:                                              ; preds = %113, %110
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 4), align 8
  %122 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 7), align 8
  %124 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %7, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 6), align 4
  %126 = call i32 @open_dev(i32 %125, i32* %8, i32 1, i32 1)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @ioctl(i32 %127, i32 %128, %struct.nvme_io_test* %7)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %120
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 5), align 8
  %137 = call i32 @print_perftest(%struct.nvme_io_test* %7, i32 %136)
  %138 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @memset(%struct.nvme_io_test*, i32, i32) #1

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_io_test*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @print_perftest(%struct.nvme_io_test*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
