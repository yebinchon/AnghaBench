; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_parse_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_parse_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"; created by unbound-anchor on %s\00", align 1
@xml_entitydeclhandler = common dso_local global i32 0, align 4
@xml_startelem = common dso_local global i32 0, align 4
@xml_endelem = common dso_local global i32 0, align 4
@xml_charhandle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xml_data*, i32)* @xml_parse_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_parse_setup(i32 %0, %struct.xml_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xml_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  store i32 %0, i32* %4, align 4
  store %struct.xml_data* %1, %struct.xml_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %9 = call i32 @memset(%struct.xml_data* %8, i32 0, i32 56)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %12 = call i32 @XML_SetUserData(i32 %10, %struct.xml_data* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %15 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %18 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = call i32 (...) @BIO_s_mem()
  %20 = call i8* @BIO_new(i32 %19)
  %21 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %22 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = call i32 (...) @BIO_s_mem()
  %24 = call i8* @BIO_new(i32 %23)
  %25 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %26 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = call i32 (...) @BIO_s_mem()
  %28 = call i8* @BIO_new(i32 %27)
  %29 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %30 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = call i32 (...) @BIO_s_mem()
  %32 = call i8* @BIO_new(i32 %31)
  %33 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %34 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = call i32 (...) @BIO_s_mem()
  %36 = call i8* @BIO_new(i32 %35)
  %37 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %38 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i32 (...) @BIO_s_mem()
  %40 = call i8* @BIO_new(i32 %39)
  %41 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %42 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %44 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %3
  %48 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %49 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %54 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %59 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %64 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %69 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67, %62, %57, %52, %47, %3
  %73 = load i64, i64* @verb, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  %78 = call i32 @exit(i32 0) #3
  unreachable

79:                                               ; preds = %67
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %81 = call i8* @ctime(i32* %6)
  %82 = call i32 @snprintf(i8* %80, i32 1024, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load %struct.xml_data*, %struct.xml_data** %5, align 8
  %84 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87)
  %89 = trunc i64 %88 to i32
  %90 = call i64 @BIO_write(i8* %85, i8* %86, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load i64, i64* @verb, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92
  %98 = call i32 @exit(i32 0) #3
  unreachable

99:                                               ; preds = %79
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @xml_entitydeclhandler, align 4
  %102 = call i32 @XML_SetEntityDeclHandler(i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @xml_startelem, align 4
  %105 = load i32, i32* @xml_endelem, align 4
  %106 = call i32 @XML_SetElementHandler(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @xml_charhandle, align 4
  %109 = call i32 @XML_SetCharacterDataHandler(i32 %107, i32 %108)
  ret void
}

declare dso_local i32 @memset(%struct.xml_data*, i32, i32) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.xml_data*) #1

declare dso_local i8* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i64 @BIO_write(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @XML_SetEntityDeclHandler(i32, i32) #1

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
