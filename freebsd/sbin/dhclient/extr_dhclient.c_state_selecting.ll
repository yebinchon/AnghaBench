; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_selecting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_selecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.TYPE_6__*, i32, i8*, i8*, i32, %struct.client_lease*, %struct.client_lease* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.client_lease = type { i32, i32, i8*, %struct.TYPE_5__*, %struct.client_lease*, i32 }
%struct.TYPE_5__ = type { i32 }

@state = common dso_local global i32 0, align 4
@S_SELECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ARPCHECK\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"check_\00", align 1
@S_INIT = common dso_local global i8* null, align 8
@DHO_DHCP_MESSAGE_TYPE = common dso_local global i64 0, align 8
@cur_time = common dso_local global i8* null, align 8
@S_REQUESTING = common dso_local global i8* null, align 8
@iaddr_broadcast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_selecting(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca %struct.client_lease*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.interface_info*
  store %struct.interface_info* %8, %struct.interface_info** %3, align 8
  %9 = load i32, i32* @state, align 4
  %10 = load i32, i32* @S_SELECTING, align 4
  %11 = call i32 @ASSERT_STATE(i32 %9, i32 %10)
  %12 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %13 = call i32 @cancel_timeout(void (i8*)* @state_selecting, %struct.interface_info* %12)
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = call i32 @cancel_timeout(void (i8*)* @send_discover, %struct.interface_info* %14)
  store %struct.client_lease* null, %struct.client_lease** %6, align 8
  %16 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %17 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 8
  %20 = load %struct.client_lease*, %struct.client_lease** %19, align 8
  store %struct.client_lease* %20, %struct.client_lease** %4, align 8
  br label %21

21:                                               ; preds = %54, %1
  %22 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %23 = icmp ne %struct.client_lease* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %26 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %25, i32 0, i32 4
  %27 = load %struct.client_lease*, %struct.client_lease** %26, align 8
  store %struct.client_lease* %27, %struct.client_lease** %5, align 8
  %28 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %29 = icmp ne %struct.client_lease* %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %24
  %31 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %32 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @script_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %36 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.client_lease* %35)
  %37 = call i64 (...) @script_go()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %41 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %42 = call i32 @make_decline(%struct.interface_info* %40, %struct.client_lease* %41)
  %43 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %44 = call i32 @send_decline(%struct.interface_info* %43)
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  store %struct.client_lease* %46, %struct.client_lease** %6, align 8
  %47 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %48 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %47, i32 0, i32 4
  store %struct.client_lease* null, %struct.client_lease** %48, align 8
  br label %53

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %52 = call i32 @free_client_lease(%struct.client_lease* %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  store %struct.client_lease* %55, %struct.client_lease** %4, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %58 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  store %struct.client_lease* null, %struct.client_lease** %60, align 8
  %61 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %62 = icmp ne %struct.client_lease* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** @S_INIT, align 8
  %65 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %66 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  store i8* %64, i8** %68, align 8
  %69 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %70 = call i32 @state_init(%struct.interface_info* %69)
  br label %169

71:                                               ; preds = %56
  %72 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %73 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %125, label %80

80:                                               ; preds = %71
  %81 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %82 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %83 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 7
  store %struct.client_lease* %81, %struct.client_lease** %85, align 8
  %86 = load i8*, i8** @cur_time, align 8
  %87 = getelementptr i8, i8* %86, i64 12000
  %88 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %89 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 7
  %92 = load %struct.client_lease*, %struct.client_lease** %91, align 8
  %93 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %92, i32 0, i32 2
  store i8* %87, i8** %93, align 8
  %94 = load i8*, i8** @cur_time, align 8
  %95 = getelementptr i8, i8* %94, i64 8000
  %96 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %97 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 7
  %100 = load %struct.client_lease*, %struct.client_lease** %99, align 8
  %101 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %95, i64 %103
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load i8*, i8** @cur_time, align 8
  %107 = getelementptr i8, i8* %106, i64 10000
  %108 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %109 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 7
  %112 = load %struct.client_lease*, %struct.client_lease** %111, align 8
  %113 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %107, i64 %115
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load i8*, i8** @S_REQUESTING, align 8
  %119 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %120 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 5
  store i8* %118, i8** %122, align 8
  %123 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %124 = call i32 @bind_lease(%struct.interface_info* %123)
  br label %169

125:                                              ; preds = %71
  %126 = load i32, i32* @iaddr_broadcast, align 4
  %127 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %128 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 6
  store i32 %126, i32* %130, align 8
  %131 = load i8*, i8** @S_REQUESTING, align 8
  %132 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %133 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  store i8* %131, i8** %135, align 8
  %136 = load i8*, i8** @cur_time, align 8
  %137 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %138 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i8* %136, i8** %140, align 8
  %141 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %142 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %149 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i32 %147, i32* %151, align 8
  %152 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %153 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %154 = call i32 @make_request(%struct.interface_info* %152, %struct.client_lease* %153)
  %155 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %156 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %162 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  %165 = load %struct.client_lease*, %struct.client_lease** %6, align 8
  %166 = call i32 @free_client_lease(%struct.client_lease* %165)
  %167 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %168 = call i32 @send_request(%struct.interface_info* %167)
  br label %169

169:                                              ; preds = %125, %80, %63
  ret void
}

declare dso_local i32 @ASSERT_STATE(i32, i32) #1

declare dso_local i32 @cancel_timeout(void (i8*)*, %struct.interface_info*) #1

declare dso_local void @send_discover(i8*) #1

declare dso_local i32 @script_init(i8*, i32) #1

declare dso_local i32 @script_write_params(i8*, %struct.client_lease*) #1

declare dso_local i64 @script_go(...) #1

declare dso_local i32 @make_decline(%struct.interface_info*, %struct.client_lease*) #1

declare dso_local i32 @send_decline(%struct.interface_info*) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

declare dso_local i32 @bind_lease(%struct.interface_info*) #1

declare dso_local i32 @make_request(%struct.interface_info*, %struct.client_lease*) #1

declare dso_local i32 @send_request(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
