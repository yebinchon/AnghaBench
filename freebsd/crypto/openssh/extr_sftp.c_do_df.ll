; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_do_df.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_do_df.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.sftp_statvfs = type { i32, i32, i32, i32, i32, i32, i64 }

@FMT_SCALED_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%3llu%%\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"     Inodes        Used       Avail      (root)    %%Capacity\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%11llu %11llu %11llu %11llu         %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"    Size     Used    Avail   (root)    %%Capacity\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%7sB %7sB %7sB %7sB         %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"        Size         Used        Avail       (root)    %%Capacity\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%12llu %12llu %12llu %12llu         %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i32, i32)* @do_df to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_df(%struct.sftp_conn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sftp_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sftp_statvfs, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [16 x i8], align 16
  %17 = alloca [16 x i8], align 16
  %18 = alloca i32, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load i32, i32* @FMT_SCALED_STRSIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %32 = load %struct.sftp_conn*, %struct.sftp_conn** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @do_statvfs(%struct.sftp_conn* %32, i8* %33, %struct.sftp_statvfs* %10, i32 1)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %177

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %43 = call i32 @strlcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %57

44:                                               ; preds = %37
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %46 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %47, %49
  %51 = mul nsw i32 100, %50
  %52 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = call i32 @snprintf(i8* %45, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %44, %41
  %58 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %63 = call i32 @strlcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %77

64:                                               ; preds = %57
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %66 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %67, %69
  %71 = mul nsw i32 100, %70
  %72 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = call i32 @snprintf(i8* %65, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %64, %61
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %84, i64 %90, i64 %92, i64 %95, i8* %96)
  br label %176

98:                                               ; preds = %77
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %98
  %102 = trunc i64 %20 to i32
  %103 = call i32 @strlcpy(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = trunc i64 %24 to i32
  %105 = call i32 @strlcpy(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = trunc i64 %27 to i32
  %107 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = trunc i64 %30 to i32
  %109 = call i32 @strlcpy(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %111, %113
  %115 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %114, %116
  %118 = call i32 @fmt_scaled(i32 %117, i8* %22)
  %119 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %120, %122
  %124 = call i32 @fmt_scaled(i32 %123, i8* %25)
  %125 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %126, %128
  %130 = call i32 @fmt_scaled(i32 %129, i8* %28)
  %131 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %132, %134
  %136 = call i32 @fmt_scaled(i32 %135, i8* %31)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %31, i8* %22, i8* %25, i8* %28, i8* %138)
  br label %175

140:                                              ; preds = %98
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %142 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %143, %145
  %147 = sdiv i32 %146, 1024
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %152, %154
  %156 = mul nsw i32 %150, %155
  %157 = sdiv i32 %156, 1024
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %160, %162
  %164 = sdiv i32 %163, 1024
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.sftp_statvfs, %struct.sftp_statvfs* %10, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %167, %169
  %171 = sdiv i32 %170, 1024
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %148, i64 %158, i64 %165, i64 %172, i8* %173)
  br label %175

175:                                              ; preds = %140, %101
  br label %176

176:                                              ; preds = %175, %80
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %177

177:                                              ; preds = %176, %36
  %178 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @do_statvfs(%struct.sftp_conn*, i8*, %struct.sftp_statvfs*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fmt_scaled(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
