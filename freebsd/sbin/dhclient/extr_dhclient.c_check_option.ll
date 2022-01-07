; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid IP address in option: %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Bogus Host Name option %d: %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Bogus domain search list %d: %s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unknown dhcp option value 0x%x\00", align 1
@unknown_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_option(%struct.client_lease* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.client_lease* %0, %struct.client_lease** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %10 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %18 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @pretty_print_option(i32 %8, i32 %16, i32 %24, i32 0, i32 0)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %28 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %36 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @option_as_string(i32 %26, i32 %34, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %129 [
    i32 138, label %45
    i32 132, label %45
    i32 165, label %45
    i32 145, label %45
    i32 183, label %45
    i32 171, label %45
    i32 200, label %45
    i32 170, label %45
    i32 175, label %45
    i32 147, label %45
    i32 137, label %45
    i32 202, label %45
    i32 157, label %45
    i32 154, label %45
    i32 163, label %45
    i32 164, label %45
    i32 178, label %45
    i32 186, label %45
    i32 159, label %45
    i32 166, label %45
    i32 142, label %45
    i32 148, label %45
    i32 156, label %45
    i32 129, label %45
    i32 179, label %45
    i32 172, label %45
    i32 139, label %45
    i32 140, label %45
    i32 177, label %53
    i32 158, label %53
    i32 160, label %53
    i32 134, label %53
    i32 184, label %79
    i32 182, label %79
    i32 153, label %110
    i32 133, label %110
    i32 203, label %110
    i32 167, label %110
    i32 146, label %110
    i32 180, label %110
    i32 173, label %110
    i32 155, label %110
    i32 149, label %110
    i32 168, label %110
    i32 199, label %110
    i32 152, label %110
    i32 151, label %110
    i32 174, label %110
    i32 206, label %110
    i32 150, label %110
    i32 169, label %110
    i32 144, label %110
    i32 143, label %110
    i32 141, label %110
    i32 131, label %110
    i32 205, label %110
    i32 176, label %110
    i32 198, label %110
    i32 135, label %110
    i32 136, label %110
    i32 130, label %110
    i32 162, label %110
    i32 161, label %110
    i32 128, label %110
    i32 187, label %110
    i32 195, label %110
    i32 191, label %110
    i32 192, label %110
    i32 190, label %110
    i32 193, label %110
    i32 194, label %110
    i32 188, label %110
    i32 189, label %110
    i32 197, label %110
    i32 196, label %110
    i32 204, label %110
    i32 185, label %110
    i32 181, label %110
    i32 201, label %111
  ]

45:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @ipv4addrs(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 0, i32* %3, align 4
  br label %133

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %133

53:                                               ; preds = %2, %2, %2, %2
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @res_hnok(i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %59, i8* %60)
  %62 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %63 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %70 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @free(i32 %76)
  br label %78

78:                                               ; preds = %57, %53
  store i32 1, i32* %3, align 4
  br label %133

79:                                               ; preds = %2, %2
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @res_hnok(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @check_search(i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %88, i8* %89, i8* %90)
  %92 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %93 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %100 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @free(i32 %106)
  br label %108

108:                                              ; preds = %87, %83
  br label %109

109:                                              ; preds = %108, %79
  store i32 1, i32* %3, align 4
  br label %133

110:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %133

111:                                              ; preds = %2
  %112 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %113 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %121 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @check_classless_option(i32 %119, i32 %127)
  store i32 %128, i32* %3, align 4
  br label %133

129:                                              ; preds = %2
  %130 = load i32, i32* %5, align 4
  %131 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @unknown_ok, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %111, %110, %109, %78, %52, %49
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i8* @pretty_print_option(i32, i32, i32, i32, i32) #1

declare dso_local i8* @option_as_string(i32, i32, i32) #1

declare dso_local i32 @ipv4addrs(i8*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @res_hnok(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @check_search(i8*) #1

declare dso_local i32 @check_classless_option(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
