; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_server_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_server_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i64 }

@CMD_NONE = common dso_local global i64 0, align 8
@linelen = common dso_local global i32 0, align 4
@linebuf = common dso_local global i8* null, align 8
@CMD_PASV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"227 \00", align 1
@CMD_EPSV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"229 \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_parse(%struct.session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  %4 = load %struct.session*, %struct.session** %3, align 8
  %5 = getelementptr inbounds %struct.session, %struct.session* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CMD_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @linelen, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @linebuf, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 50
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9, %1
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.session*, %struct.session** %3, align 8
  %21 = getelementptr inbounds %struct.session, %struct.session* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD_PASV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @linebuf, align 8
  %27 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26, i32 4)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.session*, %struct.session** %3, align 8
  %31 = getelementptr inbounds %struct.session, %struct.session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CMD_EPSV, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** @linebuf, align 8
  %37 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %25
  %40 = load %struct.session*, %struct.session** %3, align 8
  %41 = call i32 @allow_data_connection(%struct.session* %40)
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i64, i64* @CMD_NONE, align 8
  %45 = load %struct.session*, %struct.session** %3, align 8
  %46 = getelementptr inbounds %struct.session, %struct.session* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.session*, %struct.session** %3, align 8
  %48 = getelementptr inbounds %struct.session, %struct.session* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @allow_data_connection(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
