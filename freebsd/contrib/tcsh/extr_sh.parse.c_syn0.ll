; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i32, %struct.command*, i32, %struct.command* }
%struct.wordent = type { i32*, %struct.wordent* }

@ERR_TOOMANYRP = common dso_local global i32 0, align 4
@STRand = common dso_local global i32 0, align 4
@NODE_LIST = common dso_local global i32 0, align 4
@NODE_AND = common dso_local global i32 0, align 4
@NODE_OR = common dso_local global i32 0, align 4
@NODE_PAREN = common dso_local global i32 0, align 4
@F_AMPERSAND = common dso_local global i32 0, align 4
@F_NOINTERRUPT = common dso_local global i32 0, align 4
@ERR_TOOMANYLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn0(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca %struct.wordent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca %struct.command*, align 8
  %10 = alloca %struct.command*, align 8
  %11 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %5, align 8
  store %struct.wordent* %1, %struct.wordent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.wordent*, %struct.wordent** %5, align 8
  store %struct.wordent* %12, %struct.wordent** %8, align 8
  br label %13

13:                                               ; preds = %140, %3
  %14 = load %struct.wordent*, %struct.wordent** %8, align 8
  %15 = load %struct.wordent*, %struct.wordent** %6, align 8
  %16 = icmp ne %struct.wordent* %14, %15
  br i1 %16, label %17, label %144

17:                                               ; preds = %13
  %18 = load %struct.wordent*, %struct.wordent** %8, align 8
  %19 = getelementptr inbounds %struct.wordent, %struct.wordent* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %138 [
    i32 40, label %23
    i32 41, label %26
    i32 124, label %35
    i32 62, label %44
    i32 38, label %65
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %140

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ERR_TOOMANYRP, align 4
  %33 = call i32 @seterror(i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %140

35:                                               ; preds = %17
  %36 = load %struct.wordent*, %struct.wordent** %8, align 8
  %37 = getelementptr inbounds %struct.wordent, %struct.wordent* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 124
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %140

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %17, %43
  %45 = load %struct.wordent*, %struct.wordent** %8, align 8
  %46 = getelementptr inbounds %struct.wordent, %struct.wordent* %45, i32 0, i32 1
  %47 = load %struct.wordent*, %struct.wordent** %46, align 8
  %48 = load %struct.wordent*, %struct.wordent** %6, align 8
  %49 = icmp ne %struct.wordent* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.wordent*, %struct.wordent** %8, align 8
  %52 = getelementptr inbounds %struct.wordent, %struct.wordent* %51, i32 0, i32 1
  %53 = load %struct.wordent*, %struct.wordent** %52, align 8
  %54 = getelementptr inbounds %struct.wordent, %struct.wordent* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* @STRand, align 4
  %58 = call i32 @eq(i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.wordent*, %struct.wordent** %8, align 8
  %62 = getelementptr inbounds %struct.wordent, %struct.wordent* %61, i32 0, i32 1
  %63 = load %struct.wordent*, %struct.wordent** %62, align 8
  store %struct.wordent* %63, %struct.wordent** %8, align 8
  br label %64

64:                                               ; preds = %60, %50, %44
  br label %140

65:                                               ; preds = %17
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %139

69:                                               ; preds = %65
  %70 = load %struct.wordent*, %struct.wordent** %8, align 8
  %71 = getelementptr inbounds %struct.wordent, %struct.wordent* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 38
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %140

77:                                               ; preds = %69
  %78 = load %struct.wordent*, %struct.wordent** %5, align 8
  %79 = load %struct.wordent*, %struct.wordent** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.command* @syn1(%struct.wordent* %78, %struct.wordent* %79, i32 %80)
  store %struct.command* %81, %struct.command** %10, align 8
  %82 = load %struct.command*, %struct.command** %10, align 8
  %83 = getelementptr inbounds %struct.command, %struct.command* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NODE_LIST, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %77
  %88 = load %struct.command*, %struct.command** %10, align 8
  %89 = getelementptr inbounds %struct.command, %struct.command* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NODE_AND, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.command*, %struct.command** %10, align 8
  %95 = getelementptr inbounds %struct.command, %struct.command* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @NODE_OR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %93, %87, %77
  %100 = call %struct.command* @xcalloc(i32 1, i32 32)
  store %struct.command* %100, %struct.command** %9, align 8
  %101 = load i32, i32* @NODE_PAREN, align 4
  %102 = load %struct.command*, %struct.command** %9, align 8
  %103 = getelementptr inbounds %struct.command, %struct.command* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @F_AMPERSAND, align 4
  %105 = load i32, i32* @F_NOINTERRUPT, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.command*, %struct.command** %9, align 8
  %108 = getelementptr inbounds %struct.command, %struct.command* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.command*, %struct.command** %10, align 8
  %110 = load %struct.command*, %struct.command** %9, align 8
  %111 = getelementptr inbounds %struct.command, %struct.command* %110, i32 0, i32 4
  store %struct.command* %109, %struct.command** %111, align 8
  %112 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %112, %struct.command** %10, align 8
  br label %121

113:                                              ; preds = %93
  %114 = load i32, i32* @F_AMPERSAND, align 4
  %115 = load i32, i32* @F_NOINTERRUPT, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.command*, %struct.command** %10, align 8
  %118 = getelementptr inbounds %struct.command, %struct.command* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %99
  %122 = call %struct.command* @xcalloc(i32 1, i32 32)
  store %struct.command* %122, %struct.command** %9, align 8
  %123 = load i32, i32* @NODE_LIST, align 4
  %124 = load %struct.command*, %struct.command** %9, align 8
  %125 = getelementptr inbounds %struct.command, %struct.command* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.command*, %struct.command** %9, align 8
  %127 = getelementptr inbounds %struct.command, %struct.command* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.command*, %struct.command** %10, align 8
  %129 = load %struct.command*, %struct.command** %9, align 8
  %130 = getelementptr inbounds %struct.command, %struct.command* %129, i32 0, i32 2
  store %struct.command* %128, %struct.command** %130, align 8
  %131 = load %struct.wordent*, %struct.wordent** %8, align 8
  %132 = load %struct.wordent*, %struct.wordent** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @syntax(%struct.wordent* %131, %struct.wordent* %132, i32 %133)
  %135 = load %struct.command*, %struct.command** %9, align 8
  %136 = getelementptr inbounds %struct.command, %struct.command* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %137, %struct.command** %4, align 8
  br label %155

138:                                              ; preds = %17
  br label %139

139:                                              ; preds = %138, %68
  br label %140

140:                                              ; preds = %139, %76, %64, %42, %34, %23
  %141 = load %struct.wordent*, %struct.wordent** %8, align 8
  %142 = getelementptr inbounds %struct.wordent, %struct.wordent* %141, i32 0, i32 1
  %143 = load %struct.wordent*, %struct.wordent** %142, align 8
  store %struct.wordent* %143, %struct.wordent** %8, align 8
  br label %13

144:                                              ; preds = %13
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.wordent*, %struct.wordent** %5, align 8
  %149 = load %struct.wordent*, %struct.wordent** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call %struct.command* @syn1(%struct.wordent* %148, %struct.wordent* %149, i32 %150)
  store %struct.command* %151, %struct.command** %4, align 8
  br label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @ERR_TOOMANYLP, align 4
  %154 = call i32 @seterror(i32 %153)
  store %struct.command* null, %struct.command** %4, align 8
  br label %155

155:                                              ; preds = %152, %147, %121
  %156 = load %struct.command*, %struct.command** %4, align 8
  ret %struct.command* %156
}

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @eq(i8*, i32) #1

declare dso_local %struct.command* @syn1(%struct.wordent*, %struct.wordent*, i32) #1

declare dso_local %struct.command* @xcalloc(i32, i32) #1

declare dso_local i32 @syntax(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
