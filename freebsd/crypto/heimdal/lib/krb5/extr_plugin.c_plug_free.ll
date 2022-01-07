; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_plug_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_plugin.c_plug_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plug = type { i32, %struct.common_plugin_method* }
%struct.common_plugin_method = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @plug_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plug_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.plug*, align 8
  %4 = alloca %struct.common_plugin_method*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.plug*
  store %struct.plug* %6, %struct.plug** %3, align 8
  %7 = load %struct.plug*, %struct.plug** %3, align 8
  %8 = getelementptr inbounds %struct.plug, %struct.plug* %7, i32 0, i32 1
  %9 = load %struct.common_plugin_method*, %struct.common_plugin_method** %8, align 8
  %10 = icmp ne %struct.common_plugin_method* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.plug*, %struct.plug** %3, align 8
  %13 = getelementptr inbounds %struct.plug, %struct.plug* %12, i32 0, i32 1
  %14 = load %struct.common_plugin_method*, %struct.common_plugin_method** %13, align 8
  store %struct.common_plugin_method* %14, %struct.common_plugin_method** %4, align 8
  %15 = load %struct.common_plugin_method*, %struct.common_plugin_method** %4, align 8
  %16 = getelementptr inbounds %struct.common_plugin_method, %struct.common_plugin_method* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.plug*, %struct.plug** %3, align 8
  %19 = getelementptr inbounds %struct.plug, %struct.plug* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
