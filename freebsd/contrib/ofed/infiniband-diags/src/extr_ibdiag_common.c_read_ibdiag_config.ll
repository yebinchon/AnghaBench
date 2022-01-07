; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_read_ibdiag_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_read_ibdiag_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@ibd_ca = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@ibd_ca_port = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ibd_timeout = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"MLX_EPI\00", align 1
@IBND_CONFIG_MLX_EPI = common dso_local global i32 0, align 4
@ibd_ibnetdisc_flags = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"m_key\00", align 1
@ibd_mkey = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"sa_key\00", align 1
@ibd_sakey = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"nd_format\00", align 1
@ibd_nd_format = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_ibdiag_config(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @stat(i8* %10, %struct.stat* %9)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %120

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %120

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %116, %37, %31, %20
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @fgets(i8* %22, i32 1024, i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %117

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = call i8* @strtok_r(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %21

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %21

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strtok_r(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  store i8* %40, i8** %7, align 8
  %41 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i8*, i8** @ibd_ca, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** @ibd_ca, align 8
  br label %116

51:                                               ; preds = %38
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @strtoul(i8* %57, i32* null, i32 0)
  store i8* %58, i8** @ibd_ca_port, align 8
  br label %115

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strtoul(i8* %65, i32* null, i32 0)
  store i8* %66, i8** @ibd_timeout, align 8
  br label %114

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @val_str_true(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @IBND_CONFIG_MLX_EPI, align 4
  %78 = load i32, i32* @ibd_ibnetdisc_flags, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* @ibd_ibnetdisc_flags, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* @IBND_CONFIG_MLX_EPI, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @ibd_ibnetdisc_flags, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @ibd_ibnetdisc_flags, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %113

86:                                               ; preds = %67
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @strtoull(i8* %92, i32 0, i32 0)
  store i8* %93, i8** @ibd_mkey, align 8
  br label %112

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %97 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = call i8* @strtoull(i8* %100, i32 0, i32 0)
  store i8* %101, i8** @ibd_sakey, align 8
  br label %111

102:                                              ; preds = %94
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %105 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  %109 = call i8* @strdup(i8* %108)
  store i8* %109, i8** @ibd_nd_format, align 8
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %85
  br label %114

114:                                              ; preds = %113, %64
  br label %115

115:                                              ; preds = %114, %56
  br label %116

116:                                              ; preds = %115, %46
  br label %21

117:                                              ; preds = %21
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @fclose(i32* %118)
  br label %120

120:                                              ; preds = %117, %19, %13
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @val_str_true(i8*) #1

declare dso_local i8* @strtoull(i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
