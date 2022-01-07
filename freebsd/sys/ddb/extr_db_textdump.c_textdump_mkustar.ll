; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_textdump_mkustar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_textdump_mkustar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustar_header = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@TAR_MODE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@TAR_UID = common dso_local global i8* null, align 8
@TAR_GID = common dso_local global i8* null, align 8
@TAR_USER = common dso_local global i8* null, align 8
@TAR_GROUP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@time_second = common dso_local global i64 0, align 8
@TAR_USTAR = common dso_local global i8* null, align 8
@textdump_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @textdump_mkustar(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ustar_header*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ustar_header*
  store %struct.ustar_header* %9, %struct.ustar_header** %7, align 8
  %10 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %11 = call i32 @bzero(%struct.ustar_header* %10, i32 48)
  %12 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %13 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %18 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** @TAR_MODE, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %23 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %29 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** @TAR_UID, align 8
  %32 = call i32 @strlcpy(i32 %30, i8* %31, i32 4)
  %33 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %34 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** @TAR_GID, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  %38 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %39 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** @TAR_USER, align 8
  %42 = call i32 @strlcpy(i32 %40, i8* %41, i32 4)
  %43 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %44 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** @TAR_GROUP, align 8
  %47 = call i32 @strlcpy(i32 %45, i8* %46, i32 4)
  %48 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %49 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @time_second, align 8
  %52 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %54 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %56 = getelementptr inbounds %struct.ustar_header, %struct.ustar_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** @TAR_USTAR, align 8
  %59 = call i32 @strlcpy(i32 %57, i8* %58, i32 4)
  %60 = load %struct.ustar_header*, %struct.ustar_header** %7, align 8
  %61 = call i32 @ustar_checksum(%struct.ustar_header* %60)
  ret void
}

declare dso_local i32 @bzero(%struct.ustar_header*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @ustar_checksum(%struct.ustar_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
