; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@prog_name = common dso_local global i8* null, align 8
@ibverbose = common dso_local global i32 0, align 4
@ibdebug = common dso_local global i32 0, align 4
@ibd_ca = common dso_local global i8* null, align 8
@ibd_ca_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot resolve CA port %d\00", align 1
@IB_DEST_DRPATH = common dso_local global i32 0, align 4
@ibd_dest_type = common dso_local global i32 0, align 4
@IB_DEST_LID = common dso_local global i32 0, align 4
@IB_DEST_GUID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"Invalid timeout \22%s\22.  Timeout requires a positive integer value < %d.\00", align 1
@ibd_timeout = common dso_local global i32 0, align 4
@sm_portid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot resolve SM destination port %s\00", align 1
@ibd_sm_id = common dso_local global i32* null, align 8
@show_keys = common dso_local global i32 0, align 4
@ibd_mkey = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"M_Key: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Bad M_Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %116 [
    i32 122, label %9
    i32 104, label %12
    i32 86, label %14
    i32 101, label %20
    i32 118, label %22
    i32 100, label %25
    i32 67, label %32
    i32 80, label %34
    i32 68, label %43
    i32 76, label %45
    i32 71, label %47
    i32 116, label %49
    i32 115, label %80
    i32 75, label %91
    i32 121, label %92
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @read_ibdiag_config(i8* %10)
  br label %117

12:                                               ; preds = %2
  %13 = call i32 (...) @ibdiag_show_usage()
  br label %117

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @prog_name, align 8
  %17 = call i8* (...) @get_build_version()
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = call i32 @exit(i32 0) #3
  unreachable

20:                                               ; preds = %2
  %21 = call i32 @madrpc_show_errors(i32 1)
  br label %117

22:                                               ; preds = %2
  %23 = load i32, i32* @ibverbose, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @ibverbose, align 4
  br label %117

25:                                               ; preds = %2
  %26 = load i32, i32* @ibdebug, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @ibdebug, align 4
  %28 = call i32 @madrpc_show_errors(i32 1)
  %29 = load i32, i32* @ibdebug, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @umad_debug(i32 %30)
  br label %117

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** @ibd_ca, align 8
  br label %117

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strtoul(i8* %35, i32 0, i32 0)
  store i32 %36, i32* @ibd_ca_port, align 4
  %37 = load i32, i32* @ibd_ca_port, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ibd_ca_port, align 4
  %41 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %117

43:                                               ; preds = %2
  %44 = load i32, i32* @IB_DEST_DRPATH, align 4
  store i32 %44, i32* @ibd_dest_type, align 4
  br label %117

45:                                               ; preds = %2
  %46 = load i32, i32* @IB_DEST_LID, align 4
  store i32 %46, i32* @ibd_dest_type, align 4
  br label %117

47:                                               ; preds = %2
  %48 = load i32, i32* @IB_DEST_GUID, align 4
  store i32 %48, i32* @ibd_dest_type, align 4
  br label %117

49:                                               ; preds = %2
  store i32 0, i32* @errno, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strtol(i8* %50, i8** %6, i32 0)
  store i64 %51, i64* %7, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57, %54
  %63 = load i64, i64* %7, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @INT_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %62, %57, %49
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* @INT_MAX, align 8
  %72 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %70, i64 %71)
  br label %79

73:                                               ; preds = %65
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @madrpc_set_timeout(i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* @ibd_timeout, align 4
  br label %79

79:                                               ; preds = %73, %69
  br label %117

80:                                               ; preds = %2
  %81 = load i8*, i8** @ibd_ca, align 8
  %82 = load i32, i32* @ibd_ca_port, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* @IB_DEST_LID, align 4
  %85 = call i32 @resolve_portid_str(i8* %81, i32 %82, i32* @sm_portid, i8* %83, i32 %84, i32 0, i32* null)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %80
  store i32* @sm_portid, i32** @ibd_sm_id, align 8
  br label %117

91:                                               ; preds = %2
  store i32 1, i32* @show_keys, align 4
  br label %117

92:                                               ; preds = %2
  store i32 0, i32* @errno, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strtoull(i8* %93, i8** %6, i32 0)
  store i32 %94, i32* @ibd_mkey, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97, %92
  store i32 0, i32* @errno, align 4
  %103 = call i8* @getpass(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %104 = call i32 @strtoull(i8* %103, i8** %6, i32 0)
  store i32 %104, i32* @ibd_mkey, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %102
  %113 = call i32 (i8*, ...) @IBEXIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114, %97
  br label %117

116:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %118

117:                                              ; preds = %115, %91, %90, %79, %47, %45, %43, %42, %32, %25, %22, %20, %12, %9
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @read_ibdiag_config(i8*) #1

declare dso_local i32 @ibdiag_show_usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @get_build_version(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @madrpc_show_errors(i32) #1

declare dso_local i32 @umad_debug(i32) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local i32 @IBEXIT(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @madrpc_set_timeout(i32) #1

declare dso_local i32 @resolve_portid_str(i8*, i32, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i8* @getpass(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
