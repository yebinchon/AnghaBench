; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_lookup.c_cmd_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_lookup.c_cmd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unable to create nbcontext\00", align 1
@smb_rc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to resolve %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Got response from %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"IP address of %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_lookup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.nb_ctx*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @lookup_usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 @nb_ctx_create(%struct.nb_ctx** %5)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %14
  %23 = call i64 (...) @smb_open_rcfile()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* @smb_rc, align 4
  %27 = load %struct.nb_ctx*, %struct.nb_ctx** %5, align 8
  %28 = call i64 @nb_ctx_readrcsection(i32 %26, %struct.nb_ctx* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %25
  %33 = load i32, i32* @smb_rc, align 4
  %34 = call i32 @rc_close(i32 %33)
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = call i32 @getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @EOF, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %48 [
    i32 119, label %44
  ]

44:                                               ; preds = %42
  %45 = load %struct.nb_ctx*, %struct.nb_ctx** %5, align 8
  %46 = load i32, i32* @optarg, align 4
  %47 = call i32 @nb_ctx_setns(%struct.nb_ctx* %45, i32 %46)
  br label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @lookup_usage()
  br label %50

50:                                               ; preds = %48, %44
  br label %36

51:                                               ; preds = %36
  %52 = load i32, i32* @optind, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @lookup_usage()
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.nb_ctx*, %struct.nb_ctx** %5, align 8
  %59 = call i64 @nb_ctx_resolve(%struct.nb_ctx* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %57
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.nb_ctx*, %struct.nb_ctx** %5, align 8
  %72 = call i32 @nbns_resolvename(i8* %70, %struct.nb_ctx* %71, %struct.sockaddr** %6)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %76, i8* %77)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %63
  %81 = load %struct.nb_ctx*, %struct.nb_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @inet_ntoa(i32 %84)
  %86 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %89 = bitcast %struct.sockaddr* %88 to %struct.sockaddr_in*
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @inet_ntoa(i32 %91)
  %93 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %87, i8* %92)
  ret i32 0
}

declare dso_local i32 @lookup_usage(...) #1

declare dso_local i32 @nb_ctx_create(%struct.nb_ctx**) #1

declare dso_local i32 @smb_error(i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @smb_open_rcfile(...) #1

declare dso_local i64 @nb_ctx_readrcsection(i32, %struct.nb_ctx*, i8*, i32) #1

declare dso_local i32 @rc_close(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @nb_ctx_setns(%struct.nb_ctx*, i32) #1

declare dso_local i64 @nb_ctx_resolve(%struct.nb_ctx*) #1

declare dso_local i32 @nbns_resolvename(i8*, %struct.nb_ctx*, %struct.sockaddr**) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
