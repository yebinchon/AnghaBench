; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i64 }

@CMD_NONE = common dso_local global i64 0, align 8
@linelen = common dso_local global i32 0, align 4
@linebuf = common dso_local global i8* null, align 8
@CMD_PORT = common dso_local global i64 0, align 8
@CMD_EPRT = common dso_local global i64 0, align 8
@anonymous_only = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_parse(%struct.session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  %4 = load i64, i64* @CMD_NONE, align 8
  %5 = load %struct.session*, %struct.session** %3, align 8
  %6 = getelementptr inbounds %struct.session, %struct.session* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load %struct.session*, %struct.session** %3, align 8
  %8 = getelementptr inbounds %struct.session, %struct.session* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @linelen, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load i8*, i8** @linebuf, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 80
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** @linebuf, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 112
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** @linebuf, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 69
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** @linebuf, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 101
  br i1 %35, label %36, label %57

36:                                               ; preds = %30, %24, %18, %12
  %37 = load %struct.session*, %struct.session** %3, align 8
  %38 = call i32 @client_parse_cmd(%struct.session* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %76

41:                                               ; preds = %36
  %42 = load %struct.session*, %struct.session** %3, align 8
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CMD_PORT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.session*, %struct.session** %3, align 8
  %49 = getelementptr inbounds %struct.session, %struct.session* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CMD_EPRT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load %struct.session*, %struct.session** %3, align 8
  %55 = call i32 @allow_data_connection(%struct.session* %54)
  store i32 %55, i32* %2, align 4
  br label %76

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* @anonymous_only, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i8*, i8** @linebuf, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 85
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** @linebuf, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 117
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %60
  %73 = load %struct.session*, %struct.session** %3, align 8
  %74 = call i32 @client_parse_anon(%struct.session* %73)
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %66, %57
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72, %53, %40, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @client_parse_cmd(%struct.session*) #1

declare dso_local i32 @allow_data_connection(%struct.session*) #1

declare dso_local i32 @client_parse_anon(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
