; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_setup_interface_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_setup_interface_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i64, i64, %struct.hostapd_data**, %struct.hapd_interfaces* }
%struct.hostapd_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hapd_interfaces = type { i32, %struct.hostapd_iface**, i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Interface initialization failed\00", align 1
@HAPD_IFACE_DISABLED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@AP_EVENT_DISABLED = common dso_local global i32 0, align 4
@HAPD_IFACE_DFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: Finished CAC - bypass sync and start interface\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s: Interface waiting to sync with other interfaces\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s: Last interface to sync - starting all interfaces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_setup_interface_complete(%struct.hostapd_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hapd_interfaces*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 4
  %12 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %11, align 8
  store %struct.hapd_interfaces* %12, %struct.hapd_interfaces** %6, align 8
  %13 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %14 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %13, i32 0, i32 3
  %15 = load %struct.hostapd_data**, %struct.hostapd_data*** %14, align 8
  %16 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %15, i64 0
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %16, align 8
  store %struct.hostapd_data* %17, %struct.hostapd_data** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hostapd_setup_interface_complete_sync(%struct.hostapd_iface* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %205

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %33 = load i32, i32* @HAPD_IFACE_DISABLED, align 4
  %34 = call i32 @hostapd_set_state(%struct.hostapd_iface* %32, i32 %33)
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i32, i32* @AP_EVENT_DISABLED, align 4
  %42 = call i32 @wpa_msg(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %44 = icmp ne %struct.hapd_interfaces* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %47 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @eloop_terminate()
  br label %52

52:                                               ; preds = %50, %45, %29
  store i32 -1, i32* %3, align 4
  br label %205

53:                                               ; preds = %26
  %54 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %55 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %205

59:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %63 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %68 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %67, i32 0, i32 1
  %69 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %69, i64 %71
  %73 = load %struct.hostapd_iface*, %struct.hostapd_iface** %72, align 8
  %74 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %66
  %78 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %79 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %78, i32 0, i32 1
  %80 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %80, i64 %82
  %84 = load %struct.hostapd_iface*, %struct.hostapd_iface** %83, align 8
  %85 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %77, %66
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %60

95:                                               ; preds = %60
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %100 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HAPD_IFACE_DFS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %98
  %105 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %106 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %109 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %108, i32 0, i32 3
  %110 = load %struct.hostapd_data**, %struct.hostapd_data*** %109, align 8
  %111 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %110, i64 0
  %112 = load %struct.hostapd_data*, %struct.hostapd_data** %111, align 8
  %113 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @hostapd_setup_interface_complete_sync(%struct.hostapd_iface* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %205

121:                                              ; preds = %98, %95
  %122 = load i32, i32* %9, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %126 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* @MSG_INFO, align 4
  %128 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %129 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %128, i32 0, i32 3
  %130 = load %struct.hostapd_data**, %struct.hostapd_data*** %129, align 8
  %131 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %130, i64 0
  %132 = load %struct.hostapd_data*, %struct.hostapd_data** %131, align 8
  %133 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  store i32 0, i32* %3, align 4
  br label %205

138:                                              ; preds = %121
  %139 = load i32, i32* @MSG_INFO, align 4
  %140 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %141 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %140, i32 0, i32 3
  %142 = load %struct.hostapd_data**, %struct.hostapd_data*** %141, align 8
  %143 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %142, i64 0
  %144 = load %struct.hostapd_data*, %struct.hostapd_data** %143, align 8
  %145 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %151 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @hostapd_setup_interface_complete_sync(%struct.hostapd_iface* %152, i32 %153)
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %201, %138
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %158 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %204

161:                                              ; preds = %155
  %162 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %163 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %162, i32 0, i32 1
  %164 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %164, i64 %166
  %168 = load %struct.hostapd_iface*, %struct.hostapd_iface** %167, align 8
  %169 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %161
  %173 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %174 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %173, i32 0, i32 1
  %175 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %175, i64 %177
  %179 = load %struct.hostapd_iface*, %struct.hostapd_iface** %178, align 8
  %180 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %172
  %184 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %185 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %184, i32 0, i32 1
  %186 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %186, i64 %188
  %190 = load %struct.hostapd_iface*, %struct.hostapd_iface** %189, align 8
  %191 = call i32 @hostapd_setup_interface_complete_sync(%struct.hostapd_iface* %190, i32 0)
  %192 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %193 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %192, i32 0, i32 1
  %194 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %194, i64 %196
  %198 = load %struct.hostapd_iface*, %struct.hostapd_iface** %197, align 8
  %199 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %183, %172, %161
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %155

204:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %124, %104, %58, %52, %22
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @hostapd_setup_interface_complete_sync(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_set_state(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @eloop_terminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
