; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_exports_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_exports_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggd_export = type { i32, i32, i32, i32 }
%struct.g_gate_cinit = type { i32 }
%struct.ggd_connection = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@GGATE_FLAG_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Read-only access requested, but %s (%s) is exported write-only.\00", align 1
@EPERM = common dso_local global i32 0, align 4
@GGATE_FLAG_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Write-only access requested, but %s (%s) is exported read-only.\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Read-write access requested, but %s (%s) is exported read-only.\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Read-write access requested, but %s (%s) is exported write-only.\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ggd_export*, %struct.g_gate_cinit*, %struct.ggd_connection*)* @exports_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exports_check(%struct.ggd_export* %0, %struct.g_gate_cinit* %1, %struct.ggd_connection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ggd_export*, align 8
  %6 = alloca %struct.g_gate_cinit*, align 8
  %7 = alloca %struct.ggd_connection*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ggd_export* %0, %struct.ggd_export** %5, align 8
  store %struct.g_gate_cinit* %1, %struct.g_gate_cinit** %6, align 8
  store %struct.ggd_connection* %2, %struct.ggd_connection** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %12 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %13 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @ip2str(i32 %14)
  %16 = call i32 @strlcpy(i8* %11, i8* %15, i32 32)
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %18 = call i32 @strlcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 32)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %20 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %21 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @ip2str(i32 %22)
  %24 = call i32 @strlcat(i8* %19, i8* %23, i32 32)
  %25 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %6, align 8
  %26 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GGATE_FLAG_RDONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %3
  %32 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %33 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @O_WRONLY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %40 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %43 = call i32 @g_gate_log(i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i32, i32* @EPERM, align 4
  store i32 %44, i32* %4, align 4
  br label %155

45:                                               ; preds = %31
  %46 = load i32, i32* @GGATE_FLAG_RDONLY, align 4
  %47 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %48 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45
  br label %111

52:                                               ; preds = %3
  %53 = load %struct.g_gate_cinit*, %struct.g_gate_cinit** %6, align 8
  %54 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GGATE_FLAG_WRONLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %61 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @O_RDONLY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @LOG_WARNING, align 4
  %67 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %68 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %71 = call i32 @g_gate_log(i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %70)
  %72 = load i32, i32* @EPERM, align 4
  store i32 %72, i32* %4, align 4
  br label %155

73:                                               ; preds = %59
  %74 = load i32, i32* @GGATE_FLAG_WRONLY, align 4
  %75 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %76 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73
  br label %110

80:                                               ; preds = %52
  %81 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %82 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @O_RDONLY, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* @LOG_WARNING, align 4
  %88 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %89 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %92 = call i32 @g_gate_log(i32 %87, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %90, i8* %91)
  %93 = load i32, i32* @EPERM, align 4
  store i32 %93, i32* %4, align 4
  br label %155

94:                                               ; preds = %80
  %95 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %96 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @O_WRONLY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i32, i32* @LOG_WARNING, align 4
  %102 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %103 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %106 = call i32 @g_gate_log(i32 %101, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %104, i8* %105)
  %107 = load i32, i32* @EPERM, align 4
  store i32 %107, i32* %4, align 4
  br label %155

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %79
  br label %111

111:                                              ; preds = %110, %51
  %112 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %113 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GGATE_FLAG_RDONLY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @O_RDONLY, align 4
  store i32 %119, i32* %10, align 4
  br label %132

120:                                              ; preds = %111
  %121 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %122 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @GGATE_FLAG_WRONLY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @O_WRONLY, align 4
  store i32 %128, i32* %10, align 4
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @O_RDWR, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %129, %127
  br label %132

132:                                              ; preds = %131, %118
  %133 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %134 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @open(i32 %135, i32 %136)
  %138 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %139 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ggd_connection*, %struct.ggd_connection** %7, align 8
  %141 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %154

144:                                              ; preds = %132
  %145 = load i32, i32* @errno, align 4
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @LOG_ERR, align 4
  %147 = load %struct.ggd_export*, %struct.ggd_export** %5, align 8
  %148 = getelementptr inbounds %struct.ggd_export, %struct.ggd_export* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i8* @strerror(i32 %150)
  %152 = call i32 @g_gate_log(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %149, i8* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %144, %100, %86, %65, %37
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @ip2str(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32, i8*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
