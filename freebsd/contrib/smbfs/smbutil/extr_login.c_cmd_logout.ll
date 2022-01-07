; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_login.c_cmd_logout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_login.c_cmd_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SMB_ST_ANY = common dso_local global i32 0, align 4
@smb_rc = common dso_local global i64 0, align 8
@STDPARAM_OPT = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@SMBVOPT_CREATE = common dso_local global i32 0, align 4
@SMBSOPT_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"There is no connection to %s\00", align 1
@SMBV_PERMANENT = common dso_local global i32 0, align 4
@SMBS_PERMANENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown connection level %d\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't release connection\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Connection unmarked as permanent and will be closed when possible\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_logout(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.smb_ctx, align 4
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.smb_ctx* %5, %struct.smb_ctx** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @logout_usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* @SMB_ST_ANY, align 4
  %19 = call i64 @smb_ctx_init(%struct.smb_ctx* %15, i32 %16, i8** %17, i32 129, i32 130, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %14
  %24 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %25 = call i64 @smb_ctx_readrc(%struct.smb_ctx* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %23
  %30 = load i64, i64* @smb_rc, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @smb_rc, align 8
  %34 = call i32 @rc_close(i64 %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @STDPARAM_OPT, align 4
  %40 = call i32 @getopt(i32 %37, i8** %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @EOF, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %55 [
    i32 128, label %45
  ]

45:                                               ; preds = %43
  %46 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @smb_ctx_opt(%struct.smb_ctx* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %45
  br label %57

55:                                               ; preds = %43
  %56 = call i32 (...) @logout_usage()
  br label %57

57:                                               ; preds = %55, %54
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* @SMBVOPT_CREATE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @SMBSOPT_CREATE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %74 = call i64 @smb_ctx_resolve(%struct.smb_ctx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %58
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %58
  %79 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @smb_ctx_lookup(%struct.smb_ctx* %82, i32 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %94 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  switch i32 %106, label %111 [
    i32 129, label %107
    i32 130, label %109
  ]

107:                                              ; preds = %105
  %108 = load i32, i32* @SMBV_PERMANENT, align 4
  store i32 %108, i32* %8, align 4
  br label %115

109:                                              ; preds = %105
  %110 = load i32, i32* @SMBS_PERMANENT, align 4
  store i32 %110, i32* %8, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %112)
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %109, %107
  %116 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @smb_ctx_setflags(%struct.smb_ctx* %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @EACCES, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %122, %115
  %131 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %132 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @logout_usage(...) #1

declare dso_local i64 @smb_ctx_init(%struct.smb_ctx*, i32, i8**, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @smb_ctx_readrc(%struct.smb_ctx*) #1

declare dso_local i32 @rc_close(i64) #1

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @smb_ctx_opt(%struct.smb_ctx*, i32, i32) #1

declare dso_local i64 @smb_ctx_resolve(%struct.smb_ctx*) #1

declare dso_local i32 @smb_ctx_lookup(%struct.smb_ctx*, i32, i32) #1

declare dso_local i32 @smb_error(i8*, i32, ...) #1

declare dso_local i32 @smb_ctx_setflags(%struct.smb_ctx*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
