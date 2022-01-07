; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8*, i64, i64 }
%struct.TYPE_4__ = type { i32* }

@DHCP_OPTIONS_COOKIE = common dso_local global i32 0, align 4
@DHCP_FIXED_NON_UDP = common dso_local global i32 0, align 4
@DHO_DHCP_OPTION_OVERLOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_options(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %3 = load %struct.packet*, %struct.packet** %2, align 8
  %4 = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 3
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 8)
  %7 = load %struct.packet*, %struct.packet** %2, align 8
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @DHCP_OPTIONS_COOKIE, align 4
  %13 = call i64 @memcmp(i8* %11, i32 %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.packet*, %struct.packet** %2, align 8
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.packet*, %struct.packet** %2, align 8
  %20 = load %struct.packet*, %struct.packet** %2, align 8
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load %struct.packet*, %struct.packet** %2, align 8
  %27 = getelementptr inbounds %struct.packet, %struct.packet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DHCP_FIXED_NON_UDP, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sub nsw i32 %30, 4
  %32 = call i32 @parse_option_buffer(%struct.packet* %19, i8* %25, i32 %31)
  %33 = load %struct.packet*, %struct.packet** %2, align 8
  %34 = getelementptr inbounds %struct.packet, %struct.packet* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %18
  %38 = load %struct.packet*, %struct.packet** %2, align 8
  %39 = getelementptr inbounds %struct.packet, %struct.packet* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %37
  %47 = load %struct.packet*, %struct.packet** %2, align 8
  %48 = getelementptr inbounds %struct.packet, %struct.packet* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.packet*, %struct.packet** %2, align 8
  %60 = load %struct.packet*, %struct.packet** %2, align 8
  %61 = getelementptr inbounds %struct.packet, %struct.packet* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @parse_option_buffer(%struct.packet* %59, i8* %65, i32 8)
  br label %67

67:                                               ; preds = %58, %46
  %68 = load %struct.packet*, %struct.packet** %2, align 8
  %69 = getelementptr inbounds %struct.packet, %struct.packet* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %67
  %80 = load %struct.packet*, %struct.packet** %2, align 8
  %81 = load %struct.packet*, %struct.packet** %2, align 8
  %82 = getelementptr inbounds %struct.packet, %struct.packet* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @parse_option_buffer(%struct.packet* %80, i8* %86, i32 8)
  br label %88

88:                                               ; preds = %79, %67
  br label %89

89:                                               ; preds = %88, %37, %18
  %90 = load %struct.packet*, %struct.packet** %2, align 8
  %91 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.packet*, %struct.packet** %2, align 8
  %96 = call i32 @expand_domain_search(%struct.packet* %95)
  br label %97

97:                                               ; preds = %15, %94, %89
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @parse_option_buffer(%struct.packet*, i8*, i32) #1

declare dso_local i32 @expand_domain_search(%struct.packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
