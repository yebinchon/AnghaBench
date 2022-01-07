; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_lease_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_lease_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32 }
%struct.interface_info = type { i32 }

@STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"expecting interface name (in quotes).\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"expecting lease declaration.\00", align 1
@SEMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"expecting semicolon.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_client_lease_declaration(i32* %0, %struct.client_lease* %1, %struct.interface_info** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca %struct.interface_info**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.interface_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.client_lease* %1, %struct.client_lease** %5, align 8
  store %struct.interface_info** %2, %struct.interface_info*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @next_token(i8** %8, i32* %10)
  switch i32 %11, label %82 [
    i32 138, label %12
    i32 134, label %15
    i32 135, label %30
    i32 133, label %38
    i32 136, label %43
    i32 132, label %48
    i32 128, label %56
    i32 129, label %61
    i32 130, label %66
    i32 137, label %71
    i32 131, label %76
  ]

12:                                               ; preds = %3
  %13 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %14 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %86

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @next_token(i8** %8, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @STRING, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @parse_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @skip_to_semi(i32* %23)
  br label %86

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.interface_info* @interface_or_dummy(i8* %26)
  store %struct.interface_info* %27, %struct.interface_info** %9, align 8
  %28 = load %struct.interface_info*, %struct.interface_info** %9, align 8
  %29 = load %struct.interface_info**, %struct.interface_info*** %6, align 8
  store %struct.interface_info* %28, %struct.interface_info** %29, align 8
  br label %86

30:                                               ; preds = %3
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %33 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %32, i32 0, i32 9
  %34 = call i32 @parse_ip_addr(i32* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %96

37:                                               ; preds = %30
  br label %86

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %41 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %40, i32 0, i32 8
  %42 = call i32 @parse_string_list(i32* %39, i32* %41, i32 0)
  br label %96

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @parse_string(i32* %44)
  %46 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %47 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  br label %96

48:                                               ; preds = %3
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %51 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %50, i32 0, i32 6
  %52 = call i32 @parse_ip_addr(i32* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %96

55:                                               ; preds = %48
  br label %86

56:                                               ; preds = %3
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @parse_string(i32* %57)
  %59 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %60 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  br label %96

61:                                               ; preds = %3
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @parse_date(i32* %62)
  %64 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %65 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %96

66:                                               ; preds = %3
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @parse_date(i32* %67)
  %69 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %70 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %96

71:                                               ; preds = %3
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @parse_date(i32* %72)
  %74 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %75 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %96

76:                                               ; preds = %3
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %79 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @parse_option_decl(i32* %77, i32 %80)
  br label %96

82:                                               ; preds = %3
  %83 = call i32 @parse_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @skip_to_semi(i32* %84)
  br label %86

86:                                               ; preds = %82, %55, %37, %25, %21, %12
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @next_token(i8** %8, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SEMI, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = call i32 @parse_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @skip_to_semi(i32* %94)
  br label %96

96:                                               ; preds = %36, %38, %43, %54, %56, %61, %66, %71, %76, %92, %86
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local %struct.interface_info* @interface_or_dummy(i8*) #1

declare dso_local i32 @parse_ip_addr(i32*, i32*) #1

declare dso_local i32 @parse_string_list(i32*, i32*, i32) #1

declare dso_local i8* @parse_string(i32*) #1

declare dso_local i8* @parse_date(i32*) #1

declare dso_local i32 @parse_option_decl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
