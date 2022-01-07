; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.tftp_handle*, i64, %struct.TYPE_2__* }
%struct.tftp_handle = type { %struct.tftp_handle*, %struct.tftp_handle*, i64, %struct.iodesc*, i32 }
%struct.iodesc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@netproto = common dso_local global i64 0, align 8
@NET_TFTP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVT_NET = common dso_local global i64 0, align 8
@is_open = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TFTP_REQUESTED_BLKSIZE = common dso_local global i32 0, align 4
@servip = common dso_local global i32 0, align 4
@rootpath = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*)* @tftp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_open(i8* %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca %struct.tftp_handle*, align 8
  %7 = alloca %struct.iodesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.open_file* %1, %struct.open_file** %5, align 8
  %11 = load i64, i64* @netproto, align 8
  %12 = load i64, i64* @NET_TFTP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %145

16:                                               ; preds = %2
  %17 = load %struct.open_file*, %struct.open_file** %5, align 8
  %18 = getelementptr inbounds %struct.open_file, %struct.open_file* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVT_NET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %145

26:                                               ; preds = %16
  %27 = load i32, i32* @is_open, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %3, align 4
  br label %145

31:                                               ; preds = %26
  %32 = call %struct.tftp_handle* @calloc(i32 1, i32 40)
  store %struct.tftp_handle* %32, %struct.tftp_handle** %6, align 8
  %33 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %34 = icmp ne %struct.tftp_handle* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %145

37:                                               ; preds = %31
  %38 = load i32, i32* @TFTP_REQUESTED_BLKSIZE, align 4
  %39 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %40 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.open_file*, %struct.open_file** %5, align 8
  %42 = getelementptr inbounds %struct.open_file, %struct.open_file* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.iodesc* @socktodesc(i32 %45)
  store %struct.iodesc* %46, %struct.iodesc** %7, align 8
  %47 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %48 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %47, i32 0, i32 3
  store %struct.iodesc* %46, %struct.iodesc** %48, align 8
  %49 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %50 = icmp eq %struct.iodesc* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %53 = call i32 @free(%struct.tftp_handle* %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %145

55:                                               ; preds = %37
  %56 = load i32, i32* @servip, align 4
  %57 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %58 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %60 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i8*, i8** @rootpath, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %63, %65
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 1
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call %struct.tftp_handle* @malloc(i64 %70)
  %72 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %73 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %72, i32 0, i32 1
  store %struct.tftp_handle* %71, %struct.tftp_handle** %73, align 8
  %74 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %75 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %74, i32 0, i32 1
  %76 = load %struct.tftp_handle*, %struct.tftp_handle** %75, align 8
  %77 = icmp eq %struct.tftp_handle* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %55
  %79 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %80 = call i32 @free(%struct.tftp_handle* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %3, align 4
  br label %145

82:                                               ; preds = %55
  %83 = load i8*, i8** @rootpath, align 8
  %84 = load i8*, i8** @rootpath, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %98, label %92

92:                                               ; preds = %82
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %82
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %100

99:                                               ; preds = %92
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %102 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %101, i32 0, i32 1
  %103 = load %struct.tftp_handle*, %struct.tftp_handle** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i8*, i8** @rootpath, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @snprintf(%struct.tftp_handle* %103, i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %105, i8* %106, i8* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111, %100
  %117 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %118 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %117, i32 0, i32 1
  %119 = load %struct.tftp_handle*, %struct.tftp_handle** %118, align 8
  %120 = call i32 @free(%struct.tftp_handle* %119)
  %121 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %122 = call i32 @free(%struct.tftp_handle* %121)
  %123 = load i32, i32* @ENOMEM, align 4
  store i32 %123, i32* %3, align 4
  br label %145

124:                                              ; preds = %111
  %125 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %126 = call i32 @tftp_makereq(%struct.tftp_handle* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %131 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %130, i32 0, i32 1
  %132 = load %struct.tftp_handle*, %struct.tftp_handle** %131, align 8
  %133 = call i32 @free(%struct.tftp_handle* %132)
  %134 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %135 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %134, i32 0, i32 0
  %136 = load %struct.tftp_handle*, %struct.tftp_handle** %135, align 8
  %137 = call i32 @free(%struct.tftp_handle* %136)
  %138 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %139 = call i32 @free(%struct.tftp_handle* %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %3, align 4
  br label %145

141:                                              ; preds = %124
  %142 = load %struct.tftp_handle*, %struct.tftp_handle** %6, align 8
  %143 = load %struct.open_file*, %struct.open_file** %5, align 8
  %144 = getelementptr inbounds %struct.open_file, %struct.open_file* %143, i32 0, i32 0
  store %struct.tftp_handle* %142, %struct.tftp_handle** %144, align 8
  store i32 1, i32* @is_open, align 4
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %129, %116, %78, %51, %35, %29, %24, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.tftp_handle* @calloc(i32, i32) #1

declare dso_local %struct.iodesc* @socktodesc(i32) #1

declare dso_local i32 @free(%struct.tftp_handle*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.tftp_handle* @malloc(i64) #1

declare dso_local i32 @snprintf(%struct.tftp_handle*, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @tftp_makereq(%struct.tftp_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
