; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_closefn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_closefn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ftpio = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Waiting for final status\0A\00", align 1
@cached_connection = common dso_local global %struct.TYPE_4__* null, align 8
@FTP_TRANSFER_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ftp_closefn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_closefn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ftpio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ftpio*
  store %struct.ftpio* %7, %struct.ftpio** %4, align 8
  %8 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %9 = icmp eq %struct.ftpio* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EBADF, align 4
  store i32 %11, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %14 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %69

18:                                               ; preds = %12
  %19 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %20 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %25 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @EBADF, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %69

30:                                               ; preds = %23
  %31 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %32 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @fetch_close(%struct.TYPE_4__* %33)
  %35 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %36 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %38 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %37, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  %39 = call i32 @DEBUGF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %41 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @ftp_chkerr(%struct.TYPE_4__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %45 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cached_connection, align 8
  %48 = icmp eq %struct.TYPE_4__* %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %30
  %50 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %51 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @cached_connection, align 8
  br label %57

57:                                               ; preds = %56, %49, %30
  %58 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %59 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @fetch_close(%struct.TYPE_4__* %60)
  %62 = load %struct.ftpio*, %struct.ftpio** %4, align 8
  %63 = call i32 @free(%struct.ftpio* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @FTP_TRANSFER_COMPLETE, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 -1
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %57, %28, %17, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @fetch_close(%struct.TYPE_4__*) #1

declare dso_local i32 @DEBUGF(i8*) #1

declare dso_local i32 @ftp_chkerr(%struct.TYPE_4__*) #1

declare dso_local i32 @free(%struct.ftpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
