; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_nic_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_nic_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_5__* }

@NOVIRTUALIPS = common dso_local global i32 0, align 4
@INTERFACE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"interface/nic rules are not allowed with --interface (-I) or --novirtualips (-L)%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c", exiting\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"config_nic_rules: match-class-token=%d\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@MATCH_IFADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MATCH_IFNAME = common dso_local global i32 0, align 4
@MATCH_ALL = common dso_local global i32 0, align 4
@MATCH_IPV4 = common dso_local global i32 0, align 4
@MATCH_IPV6 = common dso_local global i32 0, align 4
@MATCH_WILDCARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"config_nic_rules: action-token=%d\00", align 1
@ACTION_LISTEN = common dso_local global i32 0, align 4
@ACTION_IGNORE = common dso_local global i32 0, align 4
@ACTION_DROP = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @config_nic_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_nic_rules(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_5__* @HEAD_PFIFO(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load i32, i32* @NOVIRTUALIPS, align 4
  %21 = call i64 @HAVE_OPT(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @INTERFACE, align 4
  %25 = call i64 @HAVE_OPT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @msyslog(i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %27
  br label %146

39:                                               ; preds = %23, %2
  br label %40

40:                                               ; preds = %142, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %146

43:                                               ; preds = %40
  store i32 -1, i32* %11, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* @estrdup(i8* %50)
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %56 [
    i32 0, label %61
    i32 134, label %104
    i32 131, label %106
    i32 130, label %108
    i32 128, label %110
  ]

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @fatal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %56
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @INSIST(i32 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 47)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i8*, i8** %10, align 8
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* @AF_UNSPEC, align 4
  %75 = call i32 @is_ip_address(i8* %73, i32 %74, i32* %6)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i32, i32* @MATCH_IFADDR, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @sscanf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %11)
  %85 = icmp eq i32 1, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = call i32 @AF(i32* %6)
  %88 = call i32 @SIZEOF_INADDR(i32 %87)
  %89 = mul nsw i32 8, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @max(i32 -1, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @min(i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %86, %81, %77
  br label %103

96:                                               ; preds = %72
  %97 = load i32, i32* @MATCH_IFNAME, align 4
  store i32 %97, i32* %7, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %10, align 8
  store i8 47, i8* %101, align 1
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %95
  br label %112

104:                                              ; preds = %52
  %105 = load i32, i32* @MATCH_ALL, align 4
  store i32 %105, i32* %7, align 4
  br label %112

106:                                              ; preds = %52
  %107 = load i32, i32* @MATCH_IPV4, align 4
  store i32 %107, i32* %7, align 4
  br label %112

108:                                              ; preds = %52
  %109 = load i32, i32* @MATCH_IPV6, align 4
  store i32 %109, i32* %7, align 4
  br label %112

110:                                              ; preds = %52
  %111 = load i32, i32* @MATCH_WILDCARD, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %108, %106, %104, %103
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %116 [
    i32 129, label %121
    i32 132, label %123
    i32 133, label %125
  ]

116:                                              ; preds = %112
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @fatal_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %112, %116
  %122 = load i32, i32* @ACTION_LISTEN, align 4
  store i32 %122, i32* %8, align 4
  br label %127

123:                                              ; preds = %112
  %124 = load i32, i32* @ACTION_IGNORE, align 4
  store i32 %124, i32* %8, align 4
  br label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @ACTION_DROP, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %123, %121
  %128 = load i32, i32* %7, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @add_nic_rule(i32 %128, i8* %129, i32 %130, i32 %131)
  %133 = load i64, i64* @current_time, align 8
  %134 = add nsw i64 %133, 2
  %135 = call i32 @timer_interfacetimeout(i64 %134)
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %138, %127
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  store %struct.TYPE_5__* %145, %struct.TYPE_5__** %5, align 8
  br label %40

146:                                              ; preds = %38, %40
  ret void
}

declare dso_local %struct.TYPE_5__* @HEAD_PFIFO(i32) #1

declare dso_local i64 @HAVE_OPT(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @is_ip_address(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @SIZEOF_INADDR(i32) #1

declare dso_local i32 @AF(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @add_nic_rule(i32, i8*, i32, i32) #1

declare dso_local i32 @timer_interfacetimeout(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
