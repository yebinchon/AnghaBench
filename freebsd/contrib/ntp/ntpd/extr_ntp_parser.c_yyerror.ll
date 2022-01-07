; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_parser.c_yyerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_parser.c_yyerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.FILE_INFO = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"line %d column %d %s\00", align 1
@remote_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAXLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"column %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.FILE_INFO*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.FILE_INFO* (...) @lex_current()
  store %struct.FILE_INFO* %5, %struct.FILE_INFO** %4, align 8
  %6 = load %struct.FILE_INFO*, %struct.FILE_INFO** %4, align 8
  %7 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %6, i32 0, i32 0
  %8 = load %struct.FILE_INFO*, %struct.FILE_INFO** %4, align 8
  %9 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %8, i32 0, i32 1
  %10 = bitcast %struct.TYPE_3__* %7 to i8*
  %11 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = load %struct.FILE_INFO*, %struct.FILE_INFO** %4, align 8
  %14 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.FILE_INFO*, %struct.FILE_INFO** %4, align 8
  %18 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @msyslog(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i8* %21)
  %23 = call i32 (...) @lex_from_file()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 2), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @MAXLINE, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  %31 = sub nsw i64 %29, %30
  %32 = load %struct.FILE_INFO*, %struct.FILE_INFO** %4, align 8
  %33 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @snprintf(i64 %28, i64 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  br label %45

45:                                               ; preds = %40, %25
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 0), align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %45, %1
  ret void
}

declare dso_local %struct.FILE_INFO* @lex_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msyslog(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @lex_from_file(...) #1

declare dso_local i32 @snprintf(i64, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
