; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL: Cannot find session %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@FST_CSS_PNAME_OLD_IFNAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FST_CSS_PNAME_NEW_IFNAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FST_CSS_PNAME_OLD_PEER_ADDR = common dso_local global i32 0, align 4
@FST_CSS_PNAME_NEW_PEER_ADDR = common dso_local global i32 0, align 4
@FST_CSS_PNAME_LLT = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"CTRL: Unknown parameter: %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @session_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_set(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fst_session*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strtoul(i8* %13, i8** %9, i32 0)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call %struct.fst_session* @fst_session_get_by_id(i8* %15)
  store %struct.fst_session* %16, %struct.fst_session** %8, align 8
  %17 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %18 = icmp ne %struct.fst_session* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_WARNING, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @fst_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %145

26:                                               ; preds = %3
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i8* @os_strchr(i8* %33, i8 signext 61)
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %26
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %145

40:                                               ; preds = %31
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @FST_CSS_PNAME_OLD_IFNAME, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @os_strncasecmp(i8* %43, i32 %44, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @fst_session_set_str_ifname(%struct.fst_session* %54, i8* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %137

59:                                               ; preds = %40
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @FST_CSS_PNAME_NEW_IFNAME, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i64 @os_strncasecmp(i8* %60, i32 %61, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @fst_session_set_str_ifname(%struct.fst_session* %71, i8* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  br label %136

76:                                               ; preds = %59
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* @FST_CSS_PNAME_OLD_PEER_ADDR, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i64 @os_strncasecmp(i8* %77, i32 %78, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @fst_session_set_str_peer_addr(%struct.fst_session* %88, i8* %90, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %135

93:                                               ; preds = %76
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @FST_CSS_PNAME_NEW_PEER_ADDR, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i64 @os_strncasecmp(i8* %94, i32 %95, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @fst_session_set_str_peer_addr(%struct.fst_session* %105, i8* %107, i32 %108)
  store i32 %109, i32* %12, align 4
  br label %134

110:                                              ; preds = %93
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* @FST_CSS_PNAME_LLT, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i64 @os_strncasecmp(i8* %111, i32 %112, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = call i32 @fst_session_set_str_llt(%struct.fst_session* %122, i8* %124)
  store i32 %125, i32* %12, align 4
  br label %133

126:                                              ; preds = %110
  %127 = load i32, i32* @MSG_ERROR, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @fst_printf(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %130, i64 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %132, i32* %4, align 4
  br label %145

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %87
  br label %136

136:                                              ; preds = %135, %70
  br label %137

137:                                              ; preds = %136, %53
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %144 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %138, i64 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %143)
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %137, %126, %36, %19
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.fst_session* @fst_session_get_by_id(i8*) #1

declare dso_local i32 @fst_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @fst_session_set_str_ifname(%struct.fst_session*, i8*, i32) #1

declare dso_local i32 @fst_session_set_str_peer_addr(%struct.fst_session*, i8*, i32) #1

declare dso_local i32 @fst_session_set_str_llt(%struct.fst_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
