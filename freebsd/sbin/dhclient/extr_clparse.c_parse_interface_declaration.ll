; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_interface_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_interface_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_config = type { i32 }
%struct.interface_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"expecting interface name (in quotes).\00", align 1
@LBRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"expecting left brace.\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unterminated interface declaration.\00", align 1
@RBRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_interface_declaration(i32* %0, %struct.client_config* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.client_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.interface_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.client_config* %1, %struct.client_config** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @next_token(i8** %6, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STRING, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @parse_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @skip_to_semi(i32* %15)
  br label %75

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.interface_info* @interface_or_dummy(i8* %18)
  store %struct.interface_info* %19, %struct.interface_info** %7, align 8
  %20 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %26 = call i32 @make_client_state(%struct.interface_info* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %29 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %36 = load %struct.client_config*, %struct.client_config** %4, align 8
  %37 = call i32 @make_client_config(%struct.interface_info* %35, %struct.client_config* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @next_token(i8** %6, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LBRACE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @skip_to_semi(i32* %46)
  br label %75

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @peek_token(i8** %6, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EOF, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @parse_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %75

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @RBRACE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %72

62:                                               ; preds = %57
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %65 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %66 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @parse_client_statement(i32* %63, %struct.interface_info* %64, i32 %69)
  br label %71

71:                                               ; preds = %62
  br i1 true, label %49, label %72

72:                                               ; preds = %71, %61
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @next_token(i8** %6, i32* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %55, %44, %13
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local %struct.interface_info* @interface_or_dummy(i8*) #1

declare dso_local i32 @make_client_state(%struct.interface_info*) #1

declare dso_local i32 @make_client_config(%struct.interface_info*, %struct.client_config*) #1

declare dso_local i32 @peek_token(i8**, i32*) #1

declare dso_local i32 @parse_client_statement(i32*, %struct.interface_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
