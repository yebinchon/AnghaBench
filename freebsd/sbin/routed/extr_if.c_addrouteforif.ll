; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_addrouteforif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_addrouteforif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_spare = type { i64, i64, i32, i32, %struct.interface* }
%struct.interface = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rt_entry = type { i64, i32, %struct.interface* }

@addrouteforif.new = internal global %struct.rt_spare zeroinitializer, align 8
@IS_BROKE = common dso_local global i32 0, align 4
@IS_SUBNET = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IS_REMOTE = common dso_local global i32 0, align 4
@IS_EXTERNAL = common dso_local global i32 0, align 4
@IS_DUP = common dso_local global i32 0, align 4
@RS_IF = common dso_local global i32 0, align 4
@RS_NET_SYN = common dso_local global i32 0, align 4
@RS_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"re-install interface %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.interface*)* @addrouteforif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrouteforif(%struct.interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.interface*, align 8
  %4 = alloca %struct.rt_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.interface* %0, %struct.interface** %3, align 8
  %6 = load %struct.interface*, %struct.interface** %3, align 8
  %7 = getelementptr inbounds %struct.interface, %struct.interface* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IS_BROKE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %159

13:                                               ; preds = %1
  %14 = load %struct.interface*, %struct.interface** %3, align 8
  %15 = getelementptr inbounds %struct.interface, %struct.interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IS_SUBNET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.interface*, %struct.interface** %3, align 8
  %22 = call i32 @check_net_syn(%struct.interface* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.interface*, %struct.interface** %3, align 8
  %25 = getelementptr inbounds %struct.interface, %struct.interface* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_POINTOPOINT, align 4
  %28 = load i32, i32* @IFF_LOOPBACK, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 0, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.interface*, %struct.interface** %3, align 8
  %34 = getelementptr inbounds %struct.interface, %struct.interface* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.interface*, %struct.interface** %3, align 8
  %38 = getelementptr inbounds %struct.interface, %struct.interface* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @htonl(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i32 [ %35, %32 ], [ %40, %36 ]
  store i32 %42, i32* %5, align 4
  %43 = load %struct.interface*, %struct.interface** %3, align 8
  store %struct.interface* %43, %struct.interface** getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @addrouteforif.new, i32 0, i32 4), align 8
  %44 = load %struct.interface*, %struct.interface** %3, align 8
  %45 = getelementptr inbounds %struct.interface, %struct.interface* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @addrouteforif.new, i32 0, i32 0), align 8
  %47 = load %struct.interface*, %struct.interface** %3, align 8
  %48 = getelementptr inbounds %struct.interface, %struct.interface* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @addrouteforif.new, i32 0, i32 1), align 8
  %50 = load %struct.interface*, %struct.interface** %3, align 8
  %51 = getelementptr inbounds %struct.interface, %struct.interface* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @addrouteforif.new, i32 0, i32 3), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 4
  store i32 %53, i32* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @addrouteforif.new, i32 0, i32 2), align 8
  %54 = load %struct.interface*, %struct.interface** %3, align 8
  %55 = getelementptr inbounds %struct.interface, %struct.interface* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IS_REMOTE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %41
  %61 = load %struct.interface*, %struct.interface** %3, align 8
  %62 = getelementptr inbounds %struct.interface, %struct.interface* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IS_EXTERNAL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load %struct.interface*, %struct.interface** %3, align 8
  %69 = call i32 @check_remote(%struct.interface* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %159

72:                                               ; preds = %67, %60, %41
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.interface*, %struct.interface** %3, align 8
  %75 = getelementptr inbounds %struct.interface, %struct.interface* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @del_static(i32 %73, i32 %76, i32 0, i32 0)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.interface*, %struct.interface** %3, align 8
  %80 = getelementptr inbounds %struct.interface, %struct.interface* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.rt_entry* @rtget(i32 %78, i32 %81)
  store %struct.rt_entry* %82, %struct.rt_entry** %4, align 8
  %83 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %84 = icmp ne %struct.rt_entry* %83, null
  br i1 %84, label %85, label %137

85:                                               ; preds = %72
  %86 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %87 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %86, i32 0, i32 2
  %88 = load %struct.interface*, %struct.interface** %87, align 8
  %89 = load %struct.interface*, %struct.interface** %3, align 8
  %90 = icmp ne %struct.interface* %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %93 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.interface*, %struct.interface** %3, align 8
  %96 = getelementptr inbounds %struct.interface, %struct.interface* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %91, %85
  %100 = load %struct.interface*, %struct.interface** %3, align 8
  %101 = getelementptr inbounds %struct.interface, %struct.interface* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IS_DUP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %108 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %107, i32 0, i32 2
  %109 = load %struct.interface*, %struct.interface** %108, align 8
  %110 = icmp eq %struct.interface* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %113 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %112, i32 0, i32 2
  %114 = load %struct.interface*, %struct.interface** %113, align 8
  %115 = getelementptr inbounds %struct.interface, %struct.interface* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IS_BROKE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111, %106, %99
  %121 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %122 = call i32 @rtdelete(%struct.rt_entry* %121)
  store %struct.rt_entry* null, %struct.rt_entry** %4, align 8
  br label %136

123:                                              ; preds = %111, %91
  %124 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %125 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %126 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @RS_IF, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RS_NET_SYN, align 4
  %131 = load i32, i32* @RS_LOCAL, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  %135 = call i32 @rtchange(%struct.rt_entry* %124, i32 %134, %struct.rt_spare* @addrouteforif.new, i32 0)
  br label %136

136:                                              ; preds = %123, %120
  br label %137

137:                                              ; preds = %136, %72
  %138 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8
  %139 = icmp eq %struct.rt_entry* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load %struct.interface*, %struct.interface** %3, align 8
  %142 = getelementptr inbounds %struct.interface, %struct.interface* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = icmp sgt i32 %143, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.interface*, %struct.interface** %3, align 8
  %148 = getelementptr inbounds %struct.interface, %struct.interface* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @trace_act(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %140
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.interface*, %struct.interface** %3, align 8
  %154 = getelementptr inbounds %struct.interface, %struct.interface* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RS_IF, align 4
  %157 = call i32 @rtadd(i32 %152, i32 %155, i32 %156, %struct.rt_spare* @addrouteforif.new)
  br label %158

158:                                              ; preds = %151, %137
  store i32 1, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %71, %12
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @check_net_syn(%struct.interface*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @check_remote(%struct.interface*) #1

declare dso_local i32 @del_static(i32, i32, i32, i32) #1

declare dso_local %struct.rt_entry* @rtget(i32, i32) #1

declare dso_local i32 @rtdelete(%struct.rt_entry*) #1

declare dso_local i32 @rtchange(%struct.rt_entry*, i32, %struct.rt_spare*, i32) #1

declare dso_local i32 @trace_act(i8*, i32) #1

declare dso_local i32 @rtadd(i32, i32, i32, %struct.rt_spare*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
